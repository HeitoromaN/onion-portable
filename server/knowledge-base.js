/**
 * Knowledge chunks for simple RAG (keyword scoring).
 * Evolução futura: embeddings + ChromaDB conforme Update-02.
 */

const KB_CHUNKS = [
  {
    id: 'kb-01-portfolio',
    tags: ['portfólio', 'parceiro', 'nutanix', 'fortinet', 'veeam', 'soc', 'cops', 'infra'],
    text: `Portfólio Clear IT: Multicloud (AWS, Azure, Oracle, Nutanix), Hiperconvergência Nutanix NX, Backup Veeam+ExaGrid, Storage Lenovo DM3010H, NGFW Fortinet FortiGate-100F HA, EDR SentinelOne, Nessus Pro, SOC 24x7 Logsign SIEM/SOAR/UEBA, COps 24x7x365 N0-N3 com AIOps. Parceiros: Nutanix, Exagrid, Veeam, Lenovo, Fortinet, SentinelOne, Dynatrace, AWS.`
  },
  {
    id: 'kb-02-raci-sla',
    tags: ['raci', 'processo', 'sla', 'qualificação', 'proposta', 'bdm'],
    text: `Processo: Captação → Qualificação → Discovery → Proposta → Negociação → Fechamento. RACI Qualificação: BDM (R), Diretoria Pré-Vendas (A), AM (C). Proposta Técnica: Pré-Vendas (R), BDM (A). SLAs SOC: P1 Detecção ≤30min Resposta ≤2h; P2 ≤45min/≤4h; P3 ≤90min/≤8h; P4 ≤120min/≤16h. COps N0 autorrecuperação imediata.`
  },
  {
    id: 'kb-03-icp',
    tags: ['icp', 'persona', 'público', 'privado', 'governo', 'varejo'],
    text: `ICP Setor Público: secretários, gerentes TI, diretores infra. Dores: infra legada, risco paralisação, compliance, processos SEI/DFD. ICP Privado: CIO, CTO, gerente infra. Dores: custo cloud, muitos fornecedores, incidentes segurança. Campos obrigatórios: público exige SEI+DFD; privado recomenda CNPJ.`
  },
  {
    id: 'kb-04-discovery',
    tags: ['discovery', 'roteiro', 'pergunta', 'observabilidade', 'backup', 'ransomware'],
    text: `Discovery por domínios: Observabilidade/Dynatrace, SOC/Logsign, Infra/Nutanix-Lenovo, Cyber/Fortinet NGFW, COps 24x7, Backup/Veeam-ExaGrid. Alertas críticos: ambientes 190/COPOM exigem COps 24x7 N0; ransomware prioriza FortiGate+EDR+SOC MITRE; fragilidade backup sugere ExaGrid+Veeam.`
  },
  {
    id: 'kb-05-guardrails',
    tags: ['exclusão', 'escopo', 'lacuna', 'fora', 'service desk', 'cabeamento', 'desenvolvimento'],
    text: `Exclusões e lacunas Clear IT (NUNCA sugerir como inclusão sem alerta): Service Desk/Field Service, cabeamento/instalações elétricas, desenvolvimento software/API customizada, locação impressoras, treinamento end user, hardware legado não homologado. Frase canônica: "[Serviço X] está fora do portfólio atual da Clear IT. Esta é uma lacuna a validar com a liderança comercial."`
  },
  {
    id: 'kb-06-agent-persona',
    tags: ['onion', 'agente', 'orquestrador', 'storytelling'],
    text: `Persona Clear AI: assistente de pré-vendas Clear IT, ancorado em KBs. Classificar oportunidades em domínios INFRA, CLOUD, SOC, COps, CYBER. Gerar perguntas em dimensões Técnica, Comercial, Operacional, Risco. Em dúvida sobre escopo, classificar como lacuna. Responder em português, tom profissional e objetivo.`
  }
];

function tokenize(text) {
  return text.toLowerCase()
    .normalize('NFD').replace(/[\u0300-\u036f]/g, '')
    .split(/[^a-z0-9]+/)
    .filter(t => t.length > 2);
}

function retrieveContext(query, topK = 4) {
  const tokens = tokenize(query);
  if (!tokens.length) return [];

  const scored = KB_CHUNKS.map(chunk => {
    const hay = (chunk.text + ' ' + chunk.tags.join(' ')).toLowerCase();
    let score = 0;
    for (const t of tokens) {
      if (hay.includes(t)) score += 1;
      for (const tag of chunk.tags) {
        if (tag.includes(t) || t.includes(tag)) score += 2;
      }
    }
    return { ...chunk, score };
  }).filter(c => c.score > 0)
    .sort((a, b) => b.score - a.score)
    .slice(0, topK);

  return scored.length ? scored : KB_CHUNKS.slice(0, 2);
}

function buildSystemPrompt(contextChunks) {
  const contextBlock = contextChunks.map(c => `[${c.id}]\n${c.text}`).join('\n\n');
  return `Você é o Clear AI, assistente de pré-vendas da Clear IT (Squad C.4 Zimbra).

REGRAS OBRIGATÓRIAS:
1. Responda APENAS com base no contexto da Base de Conhecimento abaixo e nas regras Clear IT.
2. Se o usuário pedir serviço fora do portfólio, use a frase canônica de lacuna.
3. Nunca invente parceiros, SLAs ou serviços não documentados.
4. Responda em português (pt-BR), tom profissional, use markdown leve quando útil.
5. Se detectar intenção de qualificação, discovery ou proposta, estruture a resposta com seções claras.

CONTEXTO RECUPERADO (RAG):
${contextBlock}`;
}

module.exports = { KB_CHUNKS, retrieveContext, buildSystemPrompt };
