# Documentação do Contexto e Problemática — Pré-Vendas Clear IT

Este documento consolida de forma estruturada as informações sobre os desafios operacionais enfrentados pela área de Pré-Vendas da Clear IT, servindo de insumo para a modelagem do produto de Inteligência Artificial do Squad C.4 (Zimbra).

---

## 1. Identificação do Squad e Alinhamento do Desafio

* **Desafio:** Desafio C — Storytelling Técnico na Pré-Vendas
* **Squad:** C.4 — Zimbra
* **Contato Principal / Líder:** Heitor Chagas Feitosa
* **Composição do Time:**
  * Heitor Chagas Feitosa (Negócios e Estratégia)
  * Eric Dantas Carneiro Santos (Negócios e Estratégia)
  * Leticia Martins Mazini (Negócios e Estratégia)
  * Adrielly Batista Santos (Tecnologia e Produto)
  * Gisliane Leão Oliveira (Tecnologia e Produto)
  * Thais Aparecida Silva Rodrigues (Tecnologia e Produto)

---

## 2. Diagnóstico da Situação Atual (O Problema)

O processo atual de pré-vendas na Clear IT é excessivamente manual, descentralizado e dependente da experiência individual de cada profissional. Quando um *Account Manager* (AM) repassa uma oportunidade para o time de Engenharia de Soluções/Pré-Vendas, não há uma padronização na coleta de dados, o que resulta em perda severa de eficiência operacional e técnica.

### As 3 Principais Dores Priorizadas:
1. **Falta de padronização nos critérios para identificar oportunidades de negócio:** Cada analista adota uma abordagem distinta para qualificar se um lead é relevante ou lucrativo.
2. **Dificuldade na consolidação de informações relevantes do cliente:** Falta de clareza no entendimento das reais necessidades tecnológicas e de negócios da empresa mapeada.
3. **Alto tempo gasto na preparação e organização de reuniões estratégicas:** Os profissionais despendem muito esforço reunindo dados dispersos antes de conversar com o decisor.

### Impactos no Negócio (Baseline Atual):
* **60 minutos** gastos em média por profissional apenas na preparação de reuniões de alinhamento.
* **40% dos briefings** comerciais chegam incompletos ou inconsistentes ao time técnico.
* **30% de retrabalho técnico**, exigindo a realização de novas reuniões de levantamento (*discovery*) com o cliente para sanar dúvidas que deveriam ter sido identificadas no primeiro contato.
* **Perda de Conhecimento:** Os dados do ambiente do cliente e as lições aprendidas em propostas anteriores ficam retidos nos indivíduos, inviabilizando a reutilização institucional. Novos projetos começam virtualmente do zero.

---

## 3. Investigação e Perguntas Essenciais (Etapa Refine)

Durante o alinhamento e validação com consultores da Clear IT, o squad levantou as seguintes questões críticas para entender os gargalos:

* **Pergunta 1: Quanto tempo é gasto atualmente em cada etapa do processo de pré-vendas?**
  * *Motivo:* Identificar gargalos exatos no fluxo completo de vendas.
  * *Status/Conclusão:* A preparação inicial consome 60 minutos. Contudo, os tempos individuais das etapas subsequentes (montagem de arquitetura, precificação e escrita técnica) são variáveis e não documentados de forma clara.
* **Pergunta 2: Quais informações dos clientes são mais frequentemente esquecidas, inconsistentes ou incompletas?**
  * *Motivo:* Mapear quais campos e dados técnicos exigem validação e preenchimento mandatório.
  * *Status/Conclusão:* As maiores lacunas concentram-se em detalhes de infraestrutura, arquitetura de redes, integrações legadas, requisitos operacionais e políticas de conformidade/segurança do cliente.
* **Pergunta 3: Quais critérios determinam se uma oportunidade é considerada relevante?**
  * *Motivo:* Padronizar as regras de pontuação de leads (*lead scoring*).
  * *Status/Conclusão:* Ficou validado que os pilares fundamentais são a **lucratividade estimada**, o **potencial de expansão da conta (upsell/cross-sell)** e o valor estratégico na **aquisição de novas contas (ICP)**.

---

## 4. Visão de Futuro e Metas Esperadas (Com IA Copilot)

A introdução de um assistente inteligente focado no contexto de negócios da Clear IT redesenhará o fluxo de trabalho, gerando valor direto para a produtividade da empresa:

* **Redução de Tempo:** Queda de 60 minutos para **10 minutos** no tempo de preparação de reuniões (**-80%** de esforço operacional).
* **Padronização:** Alcançar **+90%** de conformidade e uniformidade nos artefatos gerados e no roteiro de *discovery*.
* **Aumento de Produtividade:** Ganhos de **+50%** na capacidade de atendimento e conversão da equipe de engenharia.
* **Capitalização de Conhecimento:** Retenção e **+70%** de reaproveitamento de lições aprendidas e blocos de propostas técnicas anteriores.

---

## 5. Especificação de Requisitos e Visão de Produto

### História de Usuário (User Story)
> **Como** colaborador da equipe de pré-vendas da Clear IT,
> **Quero** acessar informações padronizadas e centralizadas dos clientes,
> **Para** identificar oportunidades, preparar reuniões e definir os próximos passos comerciais com maior agilidade e eficiência.

### Regras de Negócio (RN)
1. **Padronização:** As informações inseridas sobre o perfil do cliente devem obrigatoriamente seguir uma estrutura unificada de campos.
2. **Auditoria:** O sistema deve manter logs e registrar todo o histórico de alterações realizadas nos dados do cliente.
3. **Controle de Acesso:** Somente perfis de usuários devidamente autorizados (BDMs, Pré-Vendas seniores e Direção) podem editar informações de precificação ou dados considerados críticos.
4. **Privacidade:** Todas as informações de clientes e infraestrutura corporativa devem cumprir estritamente as diretrizes de governança e proteção de dados sensíveis (LGPD).
5. **Inteligência Pró-ativa:** O sistema deve analisar os dados fornecidos, identificar lacunas automaticamente e sugerir um roteiro de perguntas complementares para que o pré-vendas utilize na reunião.

### Critérios de Aceite (CA)
* **CA-01:** O sistema deve reduzir comprovadamente o tempo de preparação das reuniões de descoberta em comparação com o modelo de trabalho manual legado.
* **CA-02:** O sistema deve gerar, antes de cada reunião com o prospect, um roteiro técnico estruturado contendo dados essenciais coletados e alertas sobre pontos de atenção.
* **CA-03:** O histórico de edições e atualizações feitas por data, hora e usuário deve estar acessível para consulta na ferramenta.
* **CA-04:** A plataforma deve possibilitar o rastreamento visual completo do ciclo de vida do lead, desde sua entrada na etapa de qualificação até o fechamento da proposta comercial.