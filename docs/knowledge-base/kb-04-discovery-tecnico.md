# KB-04: Questionários de Discovery Técnico

---

## 1. Visão Geral
Este guia serve de repositório estruturado para conduzir reuniões de descoberta técnica (*discovery*) na Clear IT. As perguntas estão segmentadas por domínio tecnológico e auxiliam na identificação de gargalos operacionais e infraestrutura existente do cliente.

---

## 2. Conceitos Chave
* **Mapeamento de MTTD e MTTR:** Métricas fundamentais para justificar a implementação de soluções de Observabilidade e COps.
* **Avaliação de Resiliência (RTO & RPO):** Indicadores críticos para propor modernização de infraestrutura baseada em Nutanix/Veeam/Exagrid.
* **Cobertura de Monitoramento (SOC/NOC):** Determina se o cliente precisa migrar para operações gerenciadas 24x7x365.

---

## 3. Exemplos Práticos

### Perguntas Críticas por Domínio
* **Observabilidade:**
  * *"Existe monitoramento de aplicações (APM) e tracing distribuído nas aplicações críticas?"*
  * *"Qual é o tempo médio de detecção (MTTD) de lentidões antes da reclamação dos usuários?"*
* **Segurança e SOC:**
  * *"Há uma plataforma SIEM centralizando logs de nuvem, rede e endpoints?"*
  * *"Qual é a capacidade de resposta e contenção de incidentes de segurança fora do horário comercial?"*
* **Nuvem e FinOps:**
  * *"Existe visibilidade dos custos por workload ou há problemas de superprovisionamento?"*
  * *"Como é feita a portabilidade de dados e resiliência entre ambientes de nuvem híbrida?"*

---

## 4. Armadilhas (Gotchas)
> [!TIP]
> **Evitando Inconsistências de Discovery:**
> * Nunca encerre uma reunião de discovery sem preencher a volumetria aproximada de ativos (número de servidores físicos, VMs, bancos de dados, switches e volumetria total de storage).
> * Sempre certifique-se de perguntar quais ferramentas de monitoramento legadas o cliente já utiliza para evitar redundância de propostas.
