# Business Context — Pré-Vendas Clear IT (Squad C.4 Zimbra)

> Este arquivo é a fonte de verdade para Produto. O agente `@product` atualizará este arquivo quando houver novas descobertas.

## 1. Visão do Produto
O **AI Copilot de Pré-Vendas (Squad C.4 Zimbra)** é um assistente inteligente projetado para o time de pré-vendas e engenharia de soluções da Clear IT. Ele centraliza as regras de negócio, o portfólio de soluções (Multicloud, Cibersegurança, SOC, COps) e parceiros homologados (Nutanix, Fortinet, Veeam, Lenovo, Dynatrace), automatizando a qualificação de oportunidades (Lead Scoring) e a geração de roteiros de descoberta técnica (*discovery*). 

O objetivo do produto é transformar a TI corporativa em um motor estratégico a partir do primeiro contato comercial, otimizando o fluxo que vai da captação até a proposta final.

## 2. Dores do Cliente (Problemas que resolvemos)
* **Falta de padronização comercial:** Falta de uniformidade nos critérios para identificar oportunidades relevantes baseadas no Perfil de Cliente Ideal (ICP).
* **Consolidação de dados ineficiente:** Dificuldade em coletar e consolidar as dores reais e a infraestrutura técnica do cliente.
* **Alto tempo de preparação:** Média de **60 minutos** gastos por analista para preparar cada reunião estratégica de alinhamento.
* **Inconsistência nos briefings:** Cerca de **40% dos briefings** comerciais chegam ao time de engenharia com informações incompletas ou inconsistentes.
* **Retrabalho técnico:** Em média, **30% das oportunidades** exigem reuniões adicionais de discovery por falhas de coleta no primeiro contato.
* **Perda de conhecimento histórico:** As lições aprendidas e propostas técnicas anteriores ficam restritas aos consultores individuais, forçando novos projetos a começarem do zero.

---

## 2.1. Validação do MVP (Baseline de Casos)
As features F-01 (Lead Scoring) e F-02 (Discovery) foram validadas com base em **30 casos reais de clientes** consolidados no histórico comercial da Clear IT. Estes casos servem como baseline para o MVP e representam os cenários típicos que o AI Copilot deve ser capaz de interpretar e processar.

**Fonte de validação:** KB-12: Baseline de Casos e Validação MVP

**Cenários validados incluem:**
- Setores: Logística, Saúde, Educação, Governo, Varejo, Indústria, Financeiro, Tecnologia, Energia, Construção, Hotelaria, Mineração, Alimentos, Seguros, Transporte, Agronegócio, Distribuição
- Tecnologias: VMware, Fortinet, Veeam, Dell, Cisco, Microsoft, Nutanix, AWS, Azure, HPE, NetApp, SolarWinds, PRTG, Zabbix, Symantec
- Dores típicas: Storage sem suporte, backup inadequado, monitoramento reativo, VPN lenta, endpoints vulneráveis, switches obsoletos, compliance regulatório

---

## 3. Backlog de Épicos e Features

| ID | Título | Status | Notas |
|---|---|---|---|
| F-01 | Qualificação e Lead Scoring Baseado em ICP | ✅ Feito | Avalia lucratividade, potencial de expansão e adequação ao ICP de Governo/Privado. |
| F-02 | Geração Assistida de Roteiro de Discovery | ✅ Feito | Cria roteiros dinâmicos com perguntas por domínio (Redes, Cloud, SOC, COps). |
| F-03 | Recomendação de Escopo de Propostas | ✅ Feito | Sugere templates de escopo técnico, SLAs (SOC 24/7, COps) e exclusões comuns. |
| F-04 | Auditoria de Modificações e Versionamento | ✅ Feito | Rastreamento histórico de edições nos dados dos leads e clientes. |
| F-05 | Conversa Livre com Agente IA | ✅ Feito | Interface de chat natural com agente ancorado nas KBs e regras de negócio. |

---

## 4. Especificações Ativas (Em Detalhe)

### F-01: Qualificação e Lead Scoring Baseado em ICP
* **História de Usuário:**
  * **Como** colaborador do time comercial/pré-vendas da Clear IT,
  * **Quero** que a IA avalie os dados cadastrados da oportunidade com base nos perfis ICP e na Matriz RACI,
  * **Para** priorizar as oportunidades mais relevantes e reduzir o desperdício de tempo em prospecções inviáveis.
* **Regras de Negócio (RN):**
  * **RN-01 (Perfil de Cliente):** A oportunidade deve ser qualificada obrigatoriamente como "Setor Público" ou "Setor Privado", derivando os respectivos campos obrigatórios.
  * **RN-02 (Pilares de Scoring):** A pontuação da oportunidade deve considerar: Lucratividade Estimada, Potencial de Expansão (Upsell/Cross-sell) e Alinhamento com Contas Estratégicas (ICP).
  * **RN-03 (Papéis RACI):** A qualificação da oportunidade deve ser executada pelo BDM (R) e aprovada pela Diretoria de Pré-Vendas (A).
* **Critérios de Aceite (CA):**
  * **CA-01:** O sistema deve classificar automaticamente o lead em uma escala de relevância (Ex: Alto, Médio, Baixo) a partir da inserção de dados financeiros e de infraestrutura.
  * **CA-02:** O sistema deve apontar lacunas obrigatórias com base no segmento do cliente (Ex: CNPJ para privado; DFD/TR e processo SEI para público).

### F-02: Geração Assistida de Roteiro de Discovery
* **História de Usuário:**
  * **Como** engenheiro de soluções da Clear IT,
  * **Quero** obter um roteiro de perguntas técnicas inteligente e consolidado antes da reunião com o cliente,
  * **Para** reduzir o tempo de preparação e erradicar o retrabalho técnico por falta de informações críticas.
* **Regras de Negócio (RN):**
  * **RN-04 (Domínios de Pergunta):** As perguntas recomendadas pelo sistema devem ser mapeadas de acordo com os domínios de interesse selecionados (Observabilidade, SOC, IA/ML, Cibersegurança, Nuvem, COps).
  * **RN-05 (Inteligência Pró-ativa):** A IA deve identificar lacunas nos dados preliminares enviados pelo AM e sugerir perguntas específicas para saná-las durante o discovery.
* **Critérios de Aceite (CA):**
  * **CA-03:** O tempo estimado para gerar o roteiro estruturado consolidado não deve ultrapassar 10 minutos (uma redução de 80% frente ao baseline de 60 minutos).
  * **CA-04:** O roteiro gerado deve incluir alertas sobre pontos críticos do ambiente do cliente (ex: sistemas sem backup, ausência de MFA, falta de monitoramento no 190/Copom).

### F-03: Recomendação de Escopo de Propostas
* **História de Usuário:**
  * **Como** engenheiro de soluções da Clear IT,
  * **Quero** receber um rascunho de escopo técnico com SLAs e exclusões alinhados ao portfólio,
  * **Para** acelerar a elaboração da proposta comercial sem risco de over-promising.
* **Regras de Negócio (RN):**
  * **RN-06 (Ancoragem de Portfólio):** Todo item de escopo sugerido deve existir em KB-01 ou ser sinalizado como lacuna conforme KB-05.
  * **RN-07 (SLAs Contratuais):** SLAs de SOC e COps devem seguir os valores de referência documentados em KB-02.
  * **RN-08 (Exclusões Padrão):** Toda proposta deve listar exclusões comuns (cabeamento, service desk, desenvolvimento customizado, locação de impressoras).
* **Critérios de Aceite (CA):**
  * **CA-05:** O sistema gera escopo estruturado (Inclusões, SLAs, Exclusões, Premissas) em menos de 2 minutos após seleção de domínios.
  * **CA-06:** Nenhum serviço fora do portfólio Clear IT aparece como inclusão sem alerta de lacuna explícita.

### F-04: Auditoria de Modificações e Versionamento
* **História de Usuário:**
  * **Como** gestor comercial ou engenheiro de soluções da Clear IT,
  * **Quero** rastrear todas as modificações feitas nos dados de leads e oportunidades,
  * **Para** garantir accountability, identificar erros e manter histórico de decisões comerciais.
* **Regras de Negócio (RN):**
  * **RN-13 (Rastreamento de Mudanças):** Toda modificação em dados de leads deve ser registrada com timestamp, usuário e campos alterados.
  * **RN-14 (Versionamento de Scripts):** Roteiros de discovery e escopos de proposta devem ter histórico de versões com capacidade de rollback.
  * **RN-15 (Log de Ações):** Ações críticas (qualificação, geração de proposta) devem ser registradas em log de auditoria.
* **Critérios de Aceite (CA):**
  * **CA-10:** O sistema deve exibir histórico de modificações por lead com data/hora e campos alterados.
  * **CA-11:** O sistema deve permitir comparação entre versões de discovery/proposta.
  * **CA-12:** O sistema deve exportar log de auditoria em formato CSV para compliance.

### F-05: Conversa Livre com Agente IA
* **História de Usuário:**
  * **Como** colaborador do time comercial/pré-vendas da Clear IT,
  * **Quero** conversar em linguagem natural com um agente IA que conhece o portfólio e as regras de negócio,
  * **Para** obter respostas rápidas sobre soluções, processos e validações sem precisar navegar por múltiplas telas.
* **Regras de Negócio (RN):**
  * **RN-09 (Ancoragem de Conhecimento):** O agente deve responder exclusivamente com base nas KBs (KB-01 a KB-06) e no contexto de negócio documentado.
  * **RN-10 (Guardrails de Escopo):** Se o usuário perguntar sobre serviços fora do portfólio, o agente deve responder com a frase canônica de lacuna (KB-05).
  * **RN-11 (Persona Onion):** O agente deve assumir a persona do Onion Orquestrador, roteando para @product, @engineer, @meta ou @docs conforme a intenção da pergunta.
  * **RN-12 (Contexto de Sessão):** O agente deve manter contexto da conversa atual e poder referenciar leads qualificados do LocalStorage.
* **Critérios de Aceite (CA):**
  * **CA-07:** O agente responde perguntas sobre portfólio, processos RACI, ICP e discovery em menos de 3 segundos.
  * **CA-08:** O agente sinaliza lacunas de portfólio explicitamente quando perguntado sobre serviços fora do escopo.
  * **CA-09:** O agente pode acessar dados de leads qualificados do LocalStorage para contextualizar respostas.
