require('dotenv').config();
const express = require('express');
const cors = require('cors');
const path = require('path');
const { retrieveContext, buildSystemPrompt } = require('./knowledge-base');

const app = express();
const PORT = process.env.PORT || 3001;
const OPENAI_MODEL = process.env.OPENAI_MODEL || 'gpt-4o-mini';
const ROOT = path.join(__dirname, '..');

app.use(cors());
app.use(express.json({ limit: '2mb' }));
app.use(express.static(ROOT));

app.get('/api/health', (_req, res) => {
  res.json({
    status: 'ok',
    service: 'clearit-ai-copilot',
    openaiConfigured: Boolean(process.env.OPENAI_API_KEY),
    model: OPENAI_MODEL
  });
});

app.post('/api/chat', async (req, res) => {
  try {
    const { message, history = [], intent = null } = req.body || {};
    if (!message || typeof message !== 'string') {
      return res.status(400).json({ error: 'Campo "message" é obrigatório.' });
    }

    const chunks = retrieveContext(message);
    const systemPrompt = buildSystemPrompt(chunks);

    const intentNote = intent
      ? `\n\n[Intenção detectada pelo frontend: ${intent.agent} — ${intent.label}]`
      : '';

    const messages = [
      { role: 'system', content: systemPrompt + intentNote },
      ...history.slice(-12).map(m => ({
        role: m.role === 'agent' ? 'assistant' : 'user',
        content: m.content
      })),
      { role: 'user', content: message }
    ];

    if (!process.env.OPENAI_API_KEY) {
      return res.json({
        mode: 'mock',
        reply: mockReply(message, chunks, intent),
        contextUsed: chunks.map(c => c.id),
        intent
      });
    }

    const openaiRes = await fetch('https://api.openai.com/v1/chat/completions', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        Authorization: `Bearer ${process.env.OPENAI_API_KEY}`
      },
      body: JSON.stringify({
        model: OPENAI_MODEL,
        messages,
        temperature: 0.4,
        max_tokens: 1200
      })
    });

    if (!openaiRes.ok) {
      const errText = await openaiRes.text();
      console.error('OpenAI error:', openaiRes.status, errText);
      return res.status(502).json({
        error: 'Falha na OpenAI API',
        status: openaiRes.status,
        fallback: mockReply(message, chunks, intent)
      });
    }

    const data = await openaiRes.json();
    const reply = data.choices?.[0]?.message?.content || 'Sem resposta do modelo.';

    res.json({
      mode: 'openai',
      reply,
      contextUsed: chunks.map(c => c.id),
      intent,
      model: OPENAI_MODEL
    });
  } catch (err) {
    console.error(err);
    res.status(500).json({ error: 'Erro interno do servidor', detail: err.message });
  }
});

function mockReply(message, chunks, intent) {
  const q = message.toLowerCase();
  const agent = intent?.agent || 'Knowledge Agent';
  const prefix = `**[${agent}]** _(modo mock — configure OPENAI_API_KEY no server/.env)_\n\n`;

  if (/service desk|field service|suporte a usuario/.test(q)) {
    return prefix + '⚠️ **FORA DO ESCOPO** · Service Desk não faz parte do portfólio Clear IT. Lacuna a validar com liderança comercial.';
  }
  if (/sla.*soc|soc.*sla/.test(q)) {
    return prefix + '**SLAs SOC 24/7:** P1 ≤30min/≤2h · P2 ≤45min/≤4h · P3 ≤90min/≤8h · P4 ≤120min/≤16h _(KB-02)_';
  }
  if (/qualific|raci|icp|lead|oportunidade/.test(q)) {
    return prefix + '**Lead Agent:** Qualificação RACI — BDM (R), Diretoria Pré-Vendas (A). Verifique segmento (Público/Privado) e campos obrigatórios SEI/DFD ou CNPJ.';
  }
  if (/discovery|roteiro|rfp|briefing/.test(q)) {
    return prefix + '**Discovery Agent:** Selecione domínios (SOC, COps, Infra, Cyber, Backup) e gere roteiro. Alertas automáticos para 190/COPOM, ransomware e lacunas de backup.';
  }
  if (/proposta|escopo|sla/.test(q)) {
    return prefix + '**Proposal Agent:** Escopo com Inclusões, SLAs, Exclusões e Premissas. Exclusões padrão: cabeamento, dev customizado, service desk, impressoras.';
  }

  const ctx = chunks.map(c => `• ${c.id}`).join('\n');
  return prefix + `Consultei: \n${ctx}\n\nPosso ajudar com portfólio, RACI, ICP, discovery, proposta e guardrails de escopo Clear IT.`;
}

app.listen(PORT, () => {
  console.log(`\n🧅 Clear IT AI Copilot Server`);
  console.log(`   App:  http://localhost:${PORT}/index.html`);
  console.log(`   API:  http://localhost:${PORT}/api/chat`);
  console.log(`   OpenAI: ${process.env.OPENAI_API_KEY ? 'configurada ✓' : 'não configurada (modo mock)'}\n`);
});
