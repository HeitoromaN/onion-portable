# Questionários de Qualificação de Oportunidade e Discovery Técnico

Este guia reúne as perguntas consultivas estruturadas por domínio tecnológico para conduzir reuniões de mapeamento de dores (*discovery*), levantamento de dados de infraestrutura e identificação de requisitos em potenciais clientes.

---

## 1. Observabilidade

* Qual é a cobertura atual de monitoramento de infraestrutura?
* Existe monitoramento de aplicações (APM) nas apps críticas?
* Como são monitorados ambientes cloud/Kubernetes/containers?
* Existe coleta centralizada de logs de todas as camadas da stack?
* Existem SLOs definidos para os serviços críticos?
* Qual é o tempo médio de detecção de degradação de performance (MTTD)?
* Como é feita a análise de causa raiz de incidentes?
* Qual é o MTTR para incidentes de aplicação?
* Existe monitoramento de experiência do usuário final (RUM/DEM/Synthetic)?
* Como você detecta degradação de performance antes que o usuário reclame?
* Existe visibilidade da jornada completa do usuário (full-stack tracing)?
* Como é medido o impacto de negócio de degradações de performance?
* Existe capacidade de correlacionar eventos de infra, app e negócio em uma plataforma?
* Como é feito o rastreamento distribuído (distributed tracing) em microsserviços?
* Existe integração de dados de observabilidade com dados de negócio?
* Como é feita a gestão de alertas para evitar alert fatigue?
* Existe capacidade de detecção automática de anomalias baseada em IA?
* Existe análise preditiva para antecipar falhas antes que ocorram?
* Como é feita a priorização automática de alertas por impacto de negócio?
* Existe integração de observabilidade com ferramentas de ITSM/ITOM?

---

## 2. Centro de Operações de Segurança (SOC)

* Existe SIEM implementado com regras de correlação ativas?
* Qual é a cobertura de fontes de log coletadas (infra, endpoints, cloud, apps)?
* Existe processo de tuning regular de regras para redução de falsos positivos?
* Como é feita a priorização e triagem de alertas gerados?
* Sua organização consome feeds de Threat Intelligence (TI) externos?
* Existe capacidade de threat hunting proativo na equipe de segurança?
* Como é feita a correlação de IoCs com alertas gerados?
* Existe compartilhamento de inteligência de ameaças com parceiros ou setor?
* Existe playbook formal de resposta para os principais tipos de incidente?
* Qual é a capacidade atual de contenção e remediação de incidentes?
* Existe integração entre detecção e resposta (SOAR ou automação de ações)?
* Como são documentados e gerenciados os casos/tickets de incidentes?
* Qual é a cobertura atual de monitoramento de segurança (horas/dias)?
* Existe SLA formal para detecção e resposta a incidentes críticos?
* A equipe atual tem capacidade para cobrir 24x7 sem terceirização?
* Existe processo de escalação claro para incidentes de alta severidade?
* Qual é o nível de automação nos processos de resposta?
* Existe gestão de vulnerabilidades integrada ao SOC?
* Como são gerados relatórios de métricas do SOC para a liderança?
* Existe processo de melhoria contínua baseado em métricas do SOC?

---

## 3. Infraestrutura (Inteligência Artificial e MLOps)

* Existe infraestrutura de GPU disponível ou planejada para cargas de IA/ML?
* A infraestrutura atual suporta as necessidades de storage para dados de treinamento?
* Existe rede de alta velocidade (InfiniBand/400GbE) para comunicação entre GPUs?
* Como é gerenciado o ciclo de vida dos modelos de IA (versionamento, deploy, monitoramento)?
* Existe data lake ou data platform centralizada para dados de treinamento?
* Qual é o nível de qualidade, limpeza e governança dos dados disponíveis?
* Existe pipeline de dados automatizado para alimentar modelos de ML?
* Como são tratados dados sensíveis (PII, confidenciais) no contexto de IA?
* Existem casos de uso de IA claramente definidos e priorizados pela liderança?
* Existe algum projeto piloto de IA em andamento ou já concluído?
* Como é medido o ROI das iniciativas de IA na organização?
* Existe alinhamento entre TI e áreas de negócio nos projetos de IA?
* Existe política formal de uso responsável de IA na organização?
* Como são tratados requisitos de conformidade (LGPD, viés) em modelos de IA?
* Existe processo de auditoria e explicabilidade (XAI) dos modelos em produção?
* Existe gestão de riscos específica para iniciativas de IA?
* Existe plataforma de MLOps para gerenciar o ciclo de vida de modelos?
* Como é feito o monitoramento de drift de modelos em produção?
* Existe capacidade interna de engenharia de ML ou dependência exclusiva de terceiros?
* Como é gerenciado o compute para treinamento vs inferência de modelos?

---

## 4. Cibersegurança (Geral e Governança Cyber)

* Como é gerenciado o controle de acesso a sistemas críticos? Existe MFA implementado?
* Sua organização utiliza ZTNA para acesso remoto?
* Existe política formal de privilégio mínimo e revisão periódica de acessos?
* Como é gerenciado o acesso de terceiros e fornecedores?
* Qual é a cobertura atual de proteção de endpoints (EDR/XDR)?
* Existe gestão centralizada de patches e atualizações de sistemas?
* Como são protegidos os dispositivos móveis e trabalho remoto (BYOD)?
* Existe segmentação de rede para isolamento de dispositivos comprometidos?
* Sua organização possui SIEM ou solução de correlação de eventos?
* Qual é o tempo médio de detecção de incidentes (MTTD)?
* Existe monitoramento contínuo de tráfego de rede para anomalias?
* Como é feita a gestão de vulnerabilidades?
* Existe plano formal de resposta a incidentes (IRP) documentado e testado?
* Qual é o tempo médio de resposta e contenção de incidentes (MTTR)?
* Existe processo de análise pós-incidente (post-mortem) e lições aprendidas?
* Como são realizados os backups e qual é a capacidade de recuperação (RTO/RPO)?
* Com que frequência são realizados treinamentos de segurança para colaboradores?
* Existe programa de simulação de phishing para testar conscientização?
* A liderança (C-level) é engajada in iniciativas de cibersegurança?
* Existe política de segurança formal, publicada e revisada periodicamente?

---

## 5. Nuvem, FinOps e Virtualização (Cloud)

* Existe inventário atualizado de todos os workloads (VMs, containers, bare-metal)?
* Qual é o nível de consolidação atual da infraestrutura virtualizada?
* Existe capacidade ociosa significativa na infraestrutura atual?
* Como é gerenciado o ciclo de vida de ativos de infraestrutura?
* Existe visibilidade clara dos custos por workload e aplicação?
* Como é feita a gestão de licenciamento de software (VMware, Windows, etc.)?
* Existe processo de rightsizing regular para evitar superprovisionamento?
* Qual é o nível de maturidade em práticas de FinOps?
* Existe adoção de containers na organização? Qual é a maturidade?
* Existe plataforma de orquestração de containers (Kubernetes) em produção?
* Como é feito o CI/CD para deployment de aplicações containerizadas?
* Existe estratégia de modernização de aplicações legadas para containers?
* Qual é a estratégia de cloud da organização?
* Existe ferramenta de gerenciamento centralizado de ambientes multicloud?
* Como é garantida a portabilidade de workloads entre ambientes?
* Existe política de dados definindo o que pode ir para cloud pública?
* Qual é o nível de modernização dos bancos de dados na organização?
* Existe estratégia de dados para cargas de trabalho de IA/ML?
* Como é feita a gestão de storage e backup dos dados críticos?
* Existe capacidade de escalar horizontalmente os bancos de dados conforme demanda?

---

## 6. Operações Cognitivas (COps)

### Contexto geral da operação
* Qual é o objetivo principal da contratação do serviço de NOC / Observabilidade?
* O foco da necessidade está em monitoramento de infraestrutura, aplicações, serviços de negócio ou todos eles?
* Quais dores a operação atual enfrenta hoje?
* Existe alguma expectativa específica de melhoria, como redução de indisponibilidade, aumento de visibilidade, redução de MTTR ou melhoria de experiência do usuário?
* O ambiente monitorado suporta operações críticas ao negócio? Quais?
* Quais áreas do cliente serão impactadas ou atendidas pelo serviço?

### Escopo do ambiente
* Quais ambientes deverão ser monitorados: produção, homologação, desenvolvimento, DR, cloud, edge, filiais?
* O escopo contempla apenas infraestrutura ou também aplicações, banco de dados, integrações, links, segurança e experiência digital?
* Existe algum ambiente ou tecnologia que ficará fora do escopo?
* O escopo inicial será completo ou haverá entrada por ondas/fases?

### Inventário e volumetria
* O cliente possui inventário atualizado do ambiente?
* Quantos servidores físicos existem no ambiente?
* Quantas máquinas virtuais existem atualmente?
* Quais sistemas operacionais compõem o ambiente? Qual a volumetria aproximada por tipo de sistema operacional?
* Quantos equipamentos de rede existem, como switches, routers, firewalls, balanceadores e access points? Qual a quantidade por tipo?
* Quantos storages, appliances e equipamentos convergentes/hiperconvergentes existem? 
* Qual a volumetria do storage?
* Quantos bancos de dados existem e quais tecnologias são utilizadas?
* Quantas bases e/ou instancias de banco de dados?
* Existem sites, unidades remotas, filiais ou data centers distribuídos? Quantos? Onde?
* Há crescimento previsto do ambiente durante o contrato?

### Infraestrutura on-premises
* Quais fabricantes e tecnologias compõem a infraestrutura local?
* Existem ambientes virtualizados? Quais plataformas são utilizadas?
* Existem clusters, blades, hiperconvergência ou ambientes dedicados?
* O ambiente possui redundância em servidores, rede, storage e energia?
* Existe site de contingência ou disaster recovery? Como ele opera?

### Ambiente em nuvem
* Possui ambiente em cloud pública, privada ou híbrida?
* Quais provedores são utilizados?
* Quais serviços em nuvem deverão ser monitorados?
* Possui integração entre monitoramento on-premises e cloud?
* Existem workloads críticos hospedados em cloud?
* Existem recursos PaaS e SaaS que também precisam ser monitorados?

### Rede e conectividade
* Qual é a topologia geral de rede do ambiente?
* Quantos links de internet, MPLS, SD-WAN ou conexões dedicadas existem?
* Existem links críticos entre unidades, data centers ou cloud?
* Quais dispositivos de rede deverão ser monitorados?
* Há necessidade de monitoramento de latência, perda, jitter e disponibilidade de links?
* Existem integrações com operadoras ou terceiros que impactam a operação?

### Aplicações e serviços
* Quais aplicações são consideradas críticas ao negócio?
* Essas aplicações são internas, web, mobile, cliente-servidor ou híbridas?
* Existe mapeamento de dependência entre aplicações e infraestrutura?
* Quais serviços precisam de monitoramento transacional ou sintético?
* Há APIs, barramentos, integrações ou jobs críticos a serem acompanhados?
* Existem janelas de maior criticidade operacional?

### Banco de dados e middleware
* Quais bancos de dados existem no ambiente?
* Quais bancos são críticos e exigem monitoramento aprofundado?
* Existem clusters, replicação, alta disponibilidade ou ambientes distribuídos?
* Há middleware, filas, barramentos, web servers ou application servers que precisam ser monitorados? Quais? Quantos?

### Ferramentas atuais
* Possui alguma ferramenta de monitoramento ou observabilidade?
* Quais ferramentas são utilizadas hoje?
* Como está dividido o uso atual entre infraestrutura, aplicação, logs, experiência digital e eventos?
* Existem lacunas técnicas ou funcionais nas ferramentas atuais? Quais?

### Eventos, alertas e correlação
* Como os alertas são gerados atualmente?
* Existe excesso de alarmes, alarmes duplicados ou falso positivo?
* Existe processo de correlação de eventos?
* Há classificação de eventos por severidade e criticidade?
* Possui definição clara do que é alerta informativo, incidente, evento crítico e indisponibilidade?
* Quantos eventos são gerados atualmente?
* Qual a quantidade média incidentes atualmente (crítico, médio e baixo)?

### Integrações operacionais
* Qual ferramenta de ITSM é utilizada atualmente?
* Quais outras ferramentas precisam ser integradas ao NOC?
* Existe CMDB? Ela está atualizada?
* Há necessidade de integração com ferramentas de inventário, automação, chat, notificação ou painéis executivos?

### Operação atual e modelo de atendimento
* Hoje existe operação de NOC interna ou terceirizada?
* Qual é o modelo atual de atendimento: horário comercial, 12x5, 24x7?
* Quais times da organização participarão do processo de atendimento?

### Incidentes, SLA e criticidade
* Existem SLAs já definidos?
* Quais tempos de resposta e acionamento são esperados?
* Existem metas de disponibilidade por serviço?

### Implantação e transição
* Existe prazo alvo para início da operação?
* O ambiente já possui documentação suficiente para onboarding?
* Haverá necessidade de discovery técnico para mapear dependências?
* Quais são os principais riscos percebidos pelo cliente na implantação?