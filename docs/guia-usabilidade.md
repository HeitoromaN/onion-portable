# Guia de Usabilidade - Onion Portable

## 1. Visão Geral

**Onion Portable** é um AI Copilot de pré-vendas da Clear IT, desenvolvido com metodologia Spec-as-Code. O sistema auxilia colaboradores comerciais e engenheiros de soluções em todo o ciclo de pré-vendas, desde a qualificação de leads até a geração de propostas técnicas.

**Objetivo:** Acelerar o ciclo de pré-vendas, garantir conformidade com o portfólio Clear IT e reduzir riscos de over-promising.

---

## 2. Estrutura da Aplicação

### 2.1. Navegação Principal

O sistema possui 6 views principais acessíveis via menu lateral:

| View | Ícone | Propósito | Público-Alvo |
|------|-------|----------|---------------|
| **Dashboard** | 📊 | Visão geral de leads qualificados e KPIs | Gestores, BDMs |
| **Qualificar Lead** | 👤 | Scoring ICP e qualificação RACI | BDMs, Pré-vendas |
| **Discovery Técnico** | 🔍 | Geração de roteiros de discovery | Engenheiros de Soluções |
| **Gerar Proposta** | 📄 | Recomendação de escopo técnico e SLAs | Engenheiros de Soluções |
| **Conversa com Agente** | 💬 | Chat com IA sobre portfólio e processos | Todos os usuários |
| **Auditoria** | 📋 | Histórico de modificações e compliance | Gestores, Compliance |

### 2.2. Recursos Adicionais

- **Base de Conhecimento:** Documentação de KBs (KB-01 a KB-07)
- **LocalStorage:** Persistência de dados no navegador
- **Exportação:** Copiar escopos, exportar logs de auditoria

---

## 3. Glossário de Termos

### 3.1. Termos de Negócio

| Termo | Definição |
|-------|-----------|
| **ICP (Ideal Customer Profile)** | Perfil ideal de cliente da Clear IT, dividido em Setor Público e Setor Privado |
| **RACI** | Matriz de responsabilidade: Responsible (R), Accountable (A), Consulted (C), Informed (I) |
| **BDM** | Business Development Manager - Responsável pela qualificação de oportunidades |
| **Lead** | Oportunidade comercial em fase de pré-vendas |
| **Score** | Pontuação de 0-100 baseada em lucratividade, expansão e alinhamento ICP |
| **Discovery** | Processo de levantamento técnico das necessidades do cliente |
| **Proposta** | Documento técnico com escopo, SLAs e exclusões |
| **SLA** | Service Level Agreement - Níveis de serviço contratados |
| **SOC** | Security Operations Center - Centro de operações de segurança |
| **COps** | Cognitive Operations - Operações cognitivas com AIOps |
| **Guardrails** | Mecanismos que impedem sugestões fora do portfólio |
| **Lacuna** | Serviço solicitado que não está no portfólio Clear IT |

### 3.2. Termos Técnicos

| Termo | Definição |
|-------|-----------|
| **Spec-as-Code** | Metodologia onde especificações são documentadas antes do código |
| **KB (Knowledge Base)** | Base de conhecimento com documentação de portfólio e processos |
| **LocalStorage** | Armazenamento persistente no navegador do usuário |
| **Persona** | Papel assumido pelo agente IA (@product, @engineer, @meta, @docs) |
| **Onion Orquestrador** | Agente IA principal que roteia para personas específicas |
| **XSS** | Cross-Site Scripting - Vulnerabilidade de segurança mitigada no sistema |
| **CNPJ/SEI** | Documentos brasileiros de identificação fiscal e processual |

### 3.3. Siglas de Features

| Sigla | Nome | Status |
|-------|------|--------|
| **F-01** | Qualificação e Lead Scoring Baseado em ICP | ✅ Feito |
| **F-02** | Geração Assistida de Roteiro de Discovery | ✅ Feito |
| **F-03** | Recomendação de Escopo de Propostas | ✅ Feito |
| **F-04** | Auditoria de Modificações e Versionamento | ✅ Feito |
| **F-05** | Conversa Livre com Agente IA | ✅ Feito |

---

## 4. Fluxos de Uso

### 4.1. Fluxo Principal: Qualificação → Discovery → Proposta

**Passo 1: Qualificar Lead (F-01)**
1. Acessar "Qualificar Lead"
2. Preencher dados da oportunidade:
   - Nome da oportunidade
   - Segmento (Público/Privado)
   - Lucratividade estimada
   - Potencial de expansão
   - BDM responsável
   - Campos específicos do segmento (CNPJ ou SEI/DFD)
3. Clicar em "Calcular Score"
4. Sistema gera score (0-100) e classificação (Alto/Médio/Baixo Impacto)
5. Lead é salvo automaticamente no Dashboard

**Passo 2: Discovery Técnico (F-02)**
1. No Dashboard, clicar em "Discovery →" no lead desejado
2. Sistema preenche briefing automaticamente
3. Selecionar domínios relevantes:
   - Observabilidade
   - SOC 24/7
   - Infraestrutura
   - Cibersegurança
   - COps
   - Backup & Resiliência
4. Adicionar notas sobre o cliente
5. Clicar em "Gerar Roteiro →"
6. Sistema gera perguntas específicas por domínio
7. Alertas de lacunas aparecem automaticamente

**Passo 3: Gerar Proposta (F-03)**
1. No Dashboard, clicar em "Proposta →" no lead desejado
2. Selecionar domínios de serviço
3. Adicionar notas adicionais (requisitos específicos)
4. Clicar em "Gerar Escopo →"
5. Sistema gera escopo técnico com:
   - Inclusões (serviços no escopo)
   - SLAs contratuais
   - Exclusões padrão
   - Premissas
6. Alertas de lacuna aparecem para itens fora do portfólio
7. Clicar em "📋 Copiar" para exportar

### 4.2. Fluxo de Suporte: Chat com Agente (F-05)

1. Acessar "Conversa com Agente"
2. Digitar pergunta em linguagem natural
3. Agente responde baseado em KBs:
   - KB-01: Portfólio de soluções
   - KB-02: Processo RACI
   - KB-03: ICP e personas
   - KB-04: Discovery técnico
   - KB-05: Guardrails de portfólio
4. Sugestões rápidas disponíveis para perguntas comuns
5. Limpar conversa quando necessário

### 4.3. Fluxo de Compliance：Auditoria (F-04)

1. Acessar "Auditoria"
2. Visualizar histórico de modificações:
   - Data/hora
   - Tipo de ação (Criação/Atualização/Exclusão)
   - Lead modificado
   - Campos alterados
   - Usuário responsável
3. Filtrar por lead ou tipo de ação
4. Exportar log em CSV para compliance
5. Limpar log quando necessário

---

## 5. Personas e Casos de Uso

### 5.1. BDM (Business Development Manager)

**Responsabilidades:**
- Qualificar novas oportunidades
- Validar alinhamento com ICP
- Obter aprovação da Diretoria de Pré-Vendas

**Casos de Uso:**
- Cadastrar lead e calcular score
- Verificar se lead atende critérios mínimos
- Consultar histórico de modificações

**Views Principais:** Qualificar Lead, Dashboard, Auditoria

### 5.2. Engenheiro de Soluções

**Responsabilidades:**
- Realizar discovery técnico
- Gerar escopos de proposta
- Validar conformidade com portfólio

**Casos de Uso:**
- Gerar roteiro de discovery
- Criar proposta técnica
- Consultar KBs para dúvidas técnicas
- Validar exclusões e lacunas

**Views Principais:** Discovery Técnico, Gerar Proposta, Conversa com Agente, Base de Conhecimento

### 5.3. Gestor Comercial

**Responsabilidades:**
- Monitorar pipeline de oportunidades
- Analisar KPIs de qualificação
- Garantir compliance

**Casos de Uso:**
- Visualizar Dashboard com KPIs
- Exportar logs de auditoria
- Analisar distribuição de scores

**Views Principais:** Dashboard, Auditoria

### 5.4. Diretoria de Pré-Vendas

**Responsabilidades:**
- Aprovar qualificação de oportunidades
- Validar conformidade de propostas

**Casos de Uso:**
- Revisar leads qualificados
- Validar escopos gerados
- Consultar histórico de decisões

**Views Principais:** Dashboard, Auditoria, Conversa com Agente

---

## 6. Boas Práticas

### 6.1. Qualificação de Leads

- **Sempre preencher o BDM responsável** - Campo obrigatório para RACI
- **Validar CNPJ para setor privado** - Evita fraudes e permite due diligence
- **Informar SEI e DFD para setor público** - Obrigatório por lei para compras governamentais
- **Revisar score antes de avançar** - Leads com score < 50 requer análise adicional

### 6.2. Discovery Técnico

- **Selecionar apenas domínios relevantes** - Evita perguntas desnecessárias
- **Documentar dores específicas do cliente** - Ajuda na personalização da proposta
- **Revisar alertas de lacuna** - Itens fora do escopo devem ser tratados separadamente
- **Usar roteiro como guia, não como script rígido** - Adapte conforme contexto

### 6.3. Geração de Proposta

- **Sempre revisar exclusões padrão** - Garante conformidade com KB-05
- **Validar SLAs antes de enviar** - Confirme com contrato se necessário
- **Documentar requisitos especiais em notas** - Sistema detecta lacunas automaticamente
- **Copiar escopo para Word/Google Docs** - Formatação preservada

### 6.4. Chat com Agente

- **Use linguagem natural** - Agente entende português brasileiro
- **Seja específico nas perguntas** - Respostas mais precisas
- **Verifique fontes nas respostas** - Agente cita KBs utilizadas
- **Use sugestões rápidas para dúvidas comuns** - Economiza tempo

### 6.5. Auditoria

- **Exportar logs mensalmente** - Para compliance e histórico
- **Filtrar por lead para análise específica** - Facilita investigação
- **Limpar log apenas quando necessário** - Preserva histórico

---

## 7. Troubleshooting

### 7.1. Problemas Comuns

| Problema | Solução |
|----------|----------|
| Lead não aparece no Dashboard | Verifique se o score foi calculado e salvo |
| Score aparece como "--" | Preencha todos os campos obrigatórios (nome, BDM) |
| Alerta de CNPJ inválido | Verifique os dígitos do CNPJ ou use gerador válido |
| SEI não é aceito | Formato deve ser XXXXXX-XXXXXXX (13 dígitos) |
| Roteiro de discovery vazio | Selecione ao menos um domínio antes de gerar |
| Proposta sem escopo | Selecione domínios e clique em "Gerar Escopo" |
| Agente não responde | Verifique se a pergunta está relacionada ao portfólio Clear IT |
| Auditoria vazia | Modificações precisam ser feitas para aparecer no log |

### 7.2. Limitações Conhecidas

- **LocalStorage limitado a ~5MB** - Grandes volumes de dados podem exceder capacidade
- **Sem autenticação de usuários** - Qualquer pessoa com acesso ao navegador pode usar
- **Sem sincronização entre dispositivos** - Dados ficam locais ao navegador
- **Agente usa matching de keywords** - Perguntas muito complexas podem não ser entendidas

---

## 8. Segurança e Privacidade

### 8.1. Proteção de Dados

- **XSS Sanitization:** Todo input de usuário é sanitizado antes de renderização
- **LocalStorage:** Dados ficam no navegador do usuário, não são enviados para servidor
- **Sem tracking:** Não há cookies ou pixels de rastreamento
- **Sem autenticação:** Não há credenciais armazenadas

### 8.2. Compliance

- **LGPD:** Dados pessoais são processados localmente, sem compartilhamento
- **Auditoria:** Logs de modificação permitem rastreabilidade de ações
- **Exportação CSV:** Facilita compliance com requisitos de documentação

---

## 9. Roadmap Futuro

### 9.1. Curto Prazo

- Integração com API real de LLM (OpenAI/Anthropic)
- Autenticação de usuários
- Sincronização entre dispositivos
- Testes automatizados

### 9.2. Médio Prazo

- Dashboard avançado com gráficos
- Relatórios personalizados
- Integração com CRM
- Colaboração em tempo real

### 9.3. Longo Prazo

- Mobile app nativo
- Integração com sistemas de assinatura digital
- Analytics avançado
- Multi-idioma

---

## 10. Suporte

### 10.1. Documentação

- **Base de Conhecimento:** Acessível via menu lateral
- **KBs:** KB-01 a KB-07 cobrem portfólio, processos, ICP, discovery, guardrails, validação e IAs
- **Guia Técnico:** `docs/technical-context-lite.md`

### 10.2. Contato

Para dúvidas ou sugestões, contate a equipe de engenharia da Clear IT.

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Status:** Produção  
**Repositório:** https://github.com/HeitoromaN/onion-portable.git
