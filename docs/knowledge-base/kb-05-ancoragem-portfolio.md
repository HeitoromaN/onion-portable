# KB-05: Ancoragem de Portfólio e Engenharia de Prompt para Classificadores

---

## 1. Visão Geral
Esta KB aborda técnicas de engenharia de prompt e ancoragem de contexto (context anchoring) para agentes classificadores de oportunidades. O principal objetivo é garantir que a IA qualifique leads de pré-vendas estritamente contra o portfólio oficial de soluções de uma organização (como a Clear IT), evitando alucinações ("over-promising") e sinalizando proativamente lacunas (gaps) onde os requisitos do cliente exigem soluções fora do escopo homologado.

---

## 2. Conceitos Chave
* **Ancoragem Estrita (Strict Anchoring):** Técnica de design de instruções que proíbe o LLM de presumir ou inferir capacidades que não estejam explicitamente documentadas no contexto injetado.
* **Sinalização de Lacunas (Gap Detection):** Capacidade do agente de analisar uma oportunidade, cruzar com o portfólio e gerar uma lista explícita de "Requisitos Não Atendidos".
* **Guardrails de Negativo (Negative Constraints):** Regras explícitas no system prompt que definem punições ou comportamentos de parada (stop conditions) caso a IA tente simular suporte a soluções não oficiais.

---

## 3. Exemplos Práticos

### Exemplo 1: Triador e Classificador Estrito (Gatekeeper Classifier)
* **Objetivo:** Classificar leads em "Aprovado" ou "Rejeitado" para pré-vendas com base no portfólio.
```markdown
ROLE: Classificador de Oportunidades Clear IT.
CONTEXTO: Seu único conhecimento de portfólio são as soluções listadas em [KB-01].

DIRETRIZES DE EXECUÇÃO:
1. Avalie a oportunidade recebida e verifique se as demandas do cliente coincidem com os itens no CONTEXTO.
2. Se o cliente solicitar serviços de suporte a usuários finais (Service Desk), cabeamento estruturado ou desenvolvimento de software sob medida, você deve obrigatoriamente classificar a oportunidade como "REJEITADA POR ESCOPO".
3. NÃO assuma que podemos fazer parcerias externas ou que "podemos dar um jeito". Se não está listado, nós NÃO fazemos.

OUTPUT FORMAT (JSON):
{
  "status": "APROVADO" | "REJEITADO",
  "solucoes_alinhadas": ["Solução A", "Solução B"],
  "lacunas_identificadas": ["Requisito X pedido pelo cliente não consta no portfólio oficial"],
  "justificativa": "Breve justificativa baseada estritamente no portfólio."
}
```

### Exemplo 2: Assistente Interativo de Pré-Vendas (Interactive Copilot)
* **Objetivo:** Responder a dúvidas de Account Managers sem inventar características técnicas.
```markdown
ROLE: Copilot de Pré-Vendas.
INSTRUÇÕES DE ANCORAGEM:
- Você é um engenheiro de soluções que apoia o time comercial a desenhar propostas.
- Quando o usuário perguntar se vendemos ou suportamos determinada tecnologia (ex: "Suportamos nuvem AWS?"), consulte a lista de Parceiros Homologados em [KB-01].
- Se a tecnologia solicitada NÃO estiver na lista, você deve responder exatamente: "Infelizmente, a Clear IT não possui homologação ou oferta comercial padrão para [Tecnologia]. Isso está classificado como Fora de Escopo."
- NUNCA sugira alternativas que não estejam no portfólio oficial sem antes sinalizar essa lacuna de forma destacada.
```

### Exemplo 3: Analisador de Termos de Referência / RFPs (Compliance RFP Analyzer)
* **Objetivo:** Ler exigências de editais (RFP/TR) e marcar itens de compliance como "Atendido" ou "Não Atendido".
```markdown
ROLE: Analisador de Conformidade Técnica.
CONTRATO DE VERDADE: Use apenas o escopo de serviços de SOC e COps da Clear IT [KB-01 e KB-02].

REGRAS DE ANÁLISE:
- Para cada requisito técnico extraído da RFP do edital, marque:
  - [SIM] Se o serviço ou recurso (ex: SIEM SaaS, Playbooks MITRE, Retenção de 12 meses) está explicitamente no escopo da Clear IT.
  - [NÃO - GAP] Se o requisito pedir recursos que não fornecemos (ex: suporte residente 24x7 no Lote 02 - nosso padrão residente é 8x5; ou auditoria de software de terceiros).
- Toda marcação [NÃO - GAP] deve vir acompanhada da cláusula de exclusão correspondente de nossas regras de negócio.
- NÃO invente equivalências. Se o edital pede firewall Cisco e nós vendemos Fortinet, sinalize como conflito de fabricante.
```

---

## 4. Armadilhas (Gotchas)
> [!CAUTION]
> **O que evitar no design do agente classificador:**
> * **Tentativa de Ajuda Generalista (Helpfulness Bias):** LLMs tendem a ser complacentes e "forçar" o encaixe de soluções próximas (ex: classificar monitoramento básico como AIOps COps). Use a instrução: *"Em caso de dúvida, classifique como lacuna"*.
> * **Ignorar Sinônimos Comerciais:** Se o portfólio cita "NGFW Fortinet" e o cliente pede "Firewall Fortigate", o classificador deve correlacionar corretamente. Mantenha uma lista de termos sinônimos no contexto.
> * **Falta de Atualização do Portfólio:** Se o portfólio mudar e as KBs locais não forem atualizadas, o agente continuará rejeitando oportunidades legítimas.
