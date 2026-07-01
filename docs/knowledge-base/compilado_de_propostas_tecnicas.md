# Compilado de Propostas Técnicas - Alimentação Business Context

Este documento reúne de forma estruturada e consolidada todas as informações técnicas extraídas das propostas comerciais da organização, servindo como base de conhecimento de engenharia de soluções e portfólio prático.

---

## 1. Segurança Avançada, SOC e Gestão de Vulnerabilidades

### Centro de Operações de Segurança (SOC 24/7)
* [cite_start]**Escopo Geral:** Monitoramento contínuo, detecção de ameaças e resposta a incidentes em tempo real operado por equipe especializada com playbooks baseados em MITRE ATT&CK e NIST 800-61[cite: 394, 398].
* [cite_start]**Plataforma SIEM:** Logsign Unified SIEM fornecido como serviço (SaaS) com coletor local on-premises[cite: 410]. [cite_start]Combina nativamente as capacidades de SIEM, SOAR, UEBA e Threat Intelligence[cite: 411].
* [cite_start]**Retenção de Logs:** Estrutura multicamada contendo 3 meses (hot), 6 meses (warm) e 12 meses (cold) com indexação para busca forense[cite: 416].
* [cite_start]**Acordo de Nível de Serviço (SLA) do SOC:** * **Prioridade P1 (Crítica):** Até 30 minutos para detecção e até 2 horas para início da resposta[cite: 687].
  * [cite_start]**Prioridade P2 (Alta):** Até 45 minutes para detecção e até 4 horas para início da resposta[cite: 687].
  * [cite_start]**Prioridade P3 (Média):** Até 90 minutos para detecção e até 8 horas para início da resposta[cite: 687].
  * [cite_start]**Prioridade P4 (Baixa):** Até 120 minutos para detecção e até 16 horas para início da resposta[cite: 687].
* [cite_start]**Camadas de Atendimento Humano:** Analistas N1 (triagem inicial e contenções documentadas), Analistas N2 (gestão de alertas, melhoria de regras e incidentes críticos), Analistas N3 (atividades de hunting e investigações aprofundadas), Equipe de Inteligência de Ameaças, Equipe de Hunting e Equipe de Integrações[cite: 483, 487, 489, 491, 496, 505].
* [cite_start]**Super Especialista em IA:** Assistente virtual integrado que atua na triagem automática, correlação e enriquecimento inteligente de eventos com fontes externas (como IBM X-Force, VirusTotal, OpenCTI, AbuseIPDB, OpenAI), além de permitir interação via Microsoft Teams[cite: 401, 403, 439, 459].

### Gestão de Vulnerabilidades (Nessus Pro)
* [cite_start]**Escopo:** Fornecimento e operação do software Nessus Professional para a execução de varreduras periódicas, classificação por criticidade (CVSS v3.1) e geração de planos de correção para até 2.000 ativos[cite: 547, 549, 557].
* **Prazos de SLA para Correção (Sujeitos à ação do cliente):**
  * [cite_start]**Crítica (CVSS $\ge$ 9.0):** Detecção em até 24 horas e correção em até 15 dias[cite: 572].
  * [cite_start]**Alta (CVSS 7.0 - 8.9):** Detecção em até 48 horas e correção em até 30 dias[cite: 572].
  * [cite_start]**Média (CVSS 4.0 - 6.9):** Detecção em até 5 dias e correção em até 60 dias[cite: 572].
  * [cite_start]**Baixa (CVSS < 4.0):** Detecção em até 10 dias e correção em até 90 dias[cite: 572].

### Threat Intelligence & Conscientização
* [cite_start]**Exposure Monitoring:** Monitoramento contínuo de marca na surface, deep e dark web focado em serviços expostos (EASM), vulnerabilidades de borda, typosquatting e vazamento de credenciais corporativas[cite: 584, 593].
* [cite_start]**Campanhas de Phishing (Fortiphish):** Programa anual focado em mitigar o risco humano através de simulações controladas de e-mails falsos com conteúdo em português e microlearning (5 a 8 minutos) gatilhado por comportamento para até 300 usuários[cite: 606, 611, 612].

### Serviços Consultivos e Ofensivos Associados
* [cite_start]**Assessment de Maturidade:** Diagnóstico executado em um cronograma macro de 7 semanas baseado no framework CIS Controls v8 (IG1/IG2)[cite: 630, 633].
* [cite_start]**Testes de Intrusão (Pentest):** Execução de 02 rodadas anuais na modalidade Gray Box (Caixa Cinza)[cite: 653, 654]. [cite_start]O escopo por rodada é limitado à Opção A (1 aplicação web de até 50 telas) ou Opção B (3 APIs de até 5 rotas cada)[cite: 656, 658].
* [cite_start]**Consultoria em Cibersegurança:** Disponibilização de banco de horas contendo 64 horas mensais não cumulativas de um consultor generalista Pleno/Sênior atuando remotamente[cite: 536, 538].
* [cite_start]**Computação Forense (Opcional):** Investigação de alta complexidade seguindo padrões ISO 27037 e RFC 3227 com cadeia de custódia formal[cite: 521, 522, 523]. [cite_start]Modelo de contratação por bloco indivisível mínimo de 40 horas técnicas por incidente[cite: 527].

---

## 2. Operações Cognitivas e Observabilidade (COps)

* [cite_start]**Conceito Fundamental:** Evolução do Network Operations Center (NOC) tradicional, aplicando observabilidade avançada, inteligência artificial, machine learning e automação 24x7x365 para reduzir o tempo médio de resposta (MTTR) e mitigar alertas falsos positivos[cite: 874, 875, 907].
* [cite_start]**Arquitetura de Níveis:** Estruturada em três camadas progressivas: Bronze, Silver e Gold[cite: 890].
* [cite_start]**Nível 0 (Automação):** Camada tecnológica focada em autorrecuperação que atua antes da intervenção humana via scripts automatizados (reinício de serviços, liberação de cache, escalonamento temporário em nuvem) e abertura/encerramento de chamados integrados ao ITSM[cite: 941, 944, 946, 949, 951, 952].
* [cite_start]**Níveis de Suporte Humano (N1, N2 e N3):** Alinhados hierarquicamente para tratar eventos não automatizados a partir do Centro de Operações remoto[cite: 971, 972, 1223].
* [cite_start]**Processos de Governança (ITIL V4/2019):** Foco estruturado em Gerenciamento de Incidentes, Gerenciamento de Níveis de Serviço e Melhoria Contínua (metodologia PDCA)[cite: 1001, 1004, 1050, 1067]. [cite_start]Os processos de Gerenciamento de Problemas e Mudanças não fazem parte do escopo padrão desta oferta[cite: 1002].
* [cite_start]**Governança Contratual:** Papéis dedicados compostos por Coordenador de Serviços COps, Analista de Qualidade (QA), Gerente Técnico de Contas (TAM) para análise preditiva via IA/LLM, e Gestor de Entrega de Serviços (SDM)[cite: 1097, 1109, 1116, 1125].
* [cite_start]**Estrutura de Relatórios:** Relatórios Diários (visão operacional imediata), Semanais (visão de tendências e top 5 ofensores) e Mensais (visão estratégica e de governança consolidada)[cite: 1138, 1146, 1154].
* [cite_start]**Período de Estabilização:** Os primeiros 90 dias após a implementação são designados para calibração de metas (SLO), período no qual não são aplicadas penalidades contratuais por descumprimento de SLA[cite: 1169].

---

## 3. Infraestrutura, Hiperconvergência e Armazenamento

### Arquiteturas baseadas em Nutanix
* **Cenário de Servidores com GPU (Proposta de Backup):**
  * [cite_start]03x Servidores Nutanix NX-3155-G9 equipados com 2x processadores Intel Xeon Gold 6542Y (24 núcleos físicos), 512GB de memória TruDDR5, 6x discos de 7.68TB NVMe (totalizando 46.08TB), e interfaces de rede de 2x 10/25Gbps SFP28[cite: 321].
  * [cite_start]Licenciamento de 144 unidades de Nutanix NCI Ultimate + NCM Starter (baseado em processadores Intel Xeon Gold 6434)[cite: 324].
  * [cite_start]Licenciamento de 06 unidades de NVIDIA RTX VWS Subscription License[cite: 327].
  * [cite_start]Suporte de 36 meses com reposição de peças em regime Next Business Day (NBD)[cite: 321].
* **Cenário de Hiperconvergência e Cópia (Setor de Inteligência):**
  * [cite_start]03x Servidores Nutanix NX-8055-G9 contendo 2x processadores Intel Xeon Gold 6426Y (16 núcleos), 1024GB de memória RAM TruDDR5 5600MHz, 4x discos de 3.84TB NVMe e 8x discos de 12TB HDD (96TB por node)[cite: 1279].
  * [cite_start]Licenciamento de 03 unidades Nutanix NCI Ultimate[cite: 1282].
  * [cite_start]Solução de Backup: 03 packs de software Commvault para cobertura de até 30 VMs[cite: 1283].
  * [cite_start]Suporte e SLAs de 60 meses, 24x7, com reposição de peças NBD[cite: 1279]. [cite_start]Inclui serviços de alocação física, configuração de consoles Prism Element/Prism Central, rotinas de cópia de segurança e migração da plataforma legada[cite: 1295, 1299, 1300, 1303, 1306].

### Repositório de Armazenamento de Longa Retenção (Lenovo e Veeam)
* [cite_start]**Hardware de Armazenamento:** 02x Storages Lenovo DM3010H, configurados com 02 controladoras em regime Ativo/Ativo por equipamento, 64GB de memória RAM e 1TB de cache baseado em NVMe por controladora[cite: 287]. [cite_start]Equipados com 90 discos HDD de 4TB 7.2K RPM NL-SAS, fornecendo uma área líquida de 241TiB por storage[cite: 287]. [cite_start]Interfaces de rede de 4x 10/25G SFP28 por controladora e cabos DAC inclusos[cite: 287].
* [cite_start]**Software de Proteção de Dados:** Software Veeam Availability Suite para 20 máquinas virtuais sob modalidade de licenciamento perpétuo, fornecendo políticas automatizadas, desduplicação e recuperação granular em nível de arquivos[cite: 290].
* [cite_start]**Suporte Geral:** 60 meses em regime 24x7 com reposição de peças NBD para o hardware[cite: 287, 290].

---

## 4. Redes, Conectividade e Segurança Perimetral (Fortinet)

### Arquitetura Básica de Conectividade Corporativa
* [cite_start]**Switches de Distribuição (Central):** 02x FortiSwitch 1048E com 48 interfaces de 1/10Gbps SFP+ e 4 de 100Gbps QSFP28[cite: 810]. [cite_start]Apresenta throughput de 1.76Tbps, latência < 800ns, suporte a MC-LAG e cabos DAC inclusos para uplink e empilhamento[cite: 810].
* [cite_start]**Switches de Acesso com PoE (Central):** 20x FortiSwitch 148F-POE fornecendo 48 portas de 1Gbps RJ45 com suporte a PoE e 4 interfaces de 10Gbps SFP+[cite: 813].
* [cite_start]**Switches de Acesso para Postos Remotos:** 32x FortiSwitch 124E contendo 24 portas de 1Gbps RJ45 e 4 interfaces de 1Gbps SFP[cite: 816].
* [cite_start]**Garantia e Serviços:** Suporte de 36 meses NBD[cite: 810, 813, 816]. [cite_start]Inclui mapeamento de escopo, desenho arquitetural, instalação em rack, criação lógica de rotas de distribuição/acesso e repasse Hands-On[cite: 821, 826, 827, 830, 833].

### Arquitetura Ampliada de Segurança Perimetral e Redes Sem Fio (NGFW)
* [cite_start]**Firewalls Next-Generation:** 02x FortiGate-100F com throughput de 1 Gbps, suporte a Alta Disponibilidade (Ativo/Passivo ou Ativo/Ativo) e dupla fonte de alimentação AC interna[cite: 1341]. [cite_start]Inclui licença de software UTP (Unified Threat Protection) por 36 meses, cobrindo recursos de IPS, Advanced Malware Protection, controle de aplicações e filtragem de URL/DNS[cite: 1343].
* [cite_start]**Gerenciamento de Logs:** 03x instâncias de FortiAnalyzer VM com capacidade de processamento contratada para até 100 GB de logs por dia e suporte FortiCare 24x7 por 5 anos[cite: 1346, 1348].
* **Comutação de Borda de Larga Escala:**
  * [cite_start]04x FortiSwitch 148F-POE (48 portas GE RJ45 + 4 portas 10GE SFP+) com suporte de 5 anos 24x7[cite: 1351, 1353].
  * [cite_start]200x FortiSwitch 124F-POE (24 portas GE RJ45 + 4 portas 10GE SFP+) com suporte de 5 anos 24x7[cite: 1356, 1358].
* [cite_start]**Rede Sem Fio:** 180x Access Points corporativos de ambiente interno FortiAP 231F (tecnologia de 3 rádios + 1 BLE) com contrato de suporte de 5 anos 24x7[cite: 1361, 1363].
* [cite_start]**Acesso Remoto Seguro:** 05x licenças de FortiClient VPN - ZTNA EMS para controle de endpoints[cite: 1364, 1366].

---

## 5. Exclusões Gerais de Escopo Padronizadas (Out of Scope)

Com base nas propostas de prestação continuada (SOC e COps) e fornecimento de infraestrutura, os seguintes itens estão **explicitamente fora do escopo** e demandam validação prévia ou propostas adicionais:
1. [cite_start]Configuração ou suporte de sistemas de terceiros e produtos não relacionados diretamente na especificação técnica[cite: 765, 769, 1240].
2. [cite_start]Execução de atividades de suporte a usuários finais (estruturas de Service Desk e Field Services)[cite: 1247].
3. [cite_start]Instalação e parametrização física de infraestrutura elétrica ou passagem de cabeamento estruturado de dados[cite: 1250].
4. [cite_start]Desenvolvimento proprietário de aplicações ou desenvolvimento personalizado de APIs para ferramentas do contratante[cite: 775, 1246, 1248].
5. [cite_start]Manutenção física de hardware local, incluindo fornecimento de peças de reposição para ativos legados, impressoras, desktops ou notebooks[cite: 1251, 1252].
6. [cite_start]Auditoria ou controle direto sobre a utilização de licenciamento de software e contratos de garantia de terceiros[cite: 1241, 1242].
7. [cite_start]Treinamentos na modalidade presencial sem acordo comercial e validação prévia entre as partes[cite: 767].