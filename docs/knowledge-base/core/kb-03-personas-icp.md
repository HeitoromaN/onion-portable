# KB-03: Ideal Customer Profile (ICP) e Personas da Clear IT

---

## 1. Visão Geral
Este documento mapeia o perfil dos clientes ideais (ICP) e as principais personas de compra da Clear IT. Ele orienta o time de pré-vendas a adotar uma abordagem consultiva direcionada para as dores específicas de cada decisor.

---

## 2. Conceitos Chave
* **ICP Governamental (Setor Público):** Focado em licitações e termos de referência (TR). Exige alta conformidade regulatória, políticas estritas de segurança e resiliência de dados críticos.
* **ICP Corporativo (Setor Privado):** Focado em redução de custos, agilidade operacional, migração multinuvem de alta escala e consolidação de fornecedores.

---

## 3. Critérios de Qualificação Avançada (Score ICP)

O sistema de qualificação utiliza uma escala de 0 a 200 pontos, dividida em critérios básicos e avançados.

### 3.1. Critérios Básicos (Máximo 100 pontos)
- **Segmento:** Público (40 pts) ou Privado (30 pts)
- **Receita Anual:** Alta >R$1.5M (30 pts), Média R$500k-R$1.5M (20 pts), Baixa <R$500k (10 pts)
- **Potencial de Expansão:** Alto (20 pts), Médio (10 pts), Baixo (5 pts)
- **BDM Responsável:** +10 pts se preenchido

### 3.2. Critérios Avançados (Máximo 100 pontos)
- **Maturidade Tecnológica:** Moderno/Proativo (20 pts), Em transição (10 pts), Legado/Reativo (5 pts)
- **Urgência/Timeline:** Imediato/0-3 meses (20 pts), 3-6 meses (10 pts), 6+ meses (5 pts), Sem prazo (0 pts)
- **Complexidade Técnica:** Alta (20 pts), Média (10 pts), Baixa (5 pts)
- **Risco Regulatório/Compliance:** Alto (20 pts), Médio (10 pts), Baixo (5 pts)
- **Health Financeiro:** Forte (20 pts), Estável (10 pts), Em dificuldade (0 pts)
- **Relacionamento Existente:** Parceria estratégica (20 pts), Cliente recorrente (10 pts), Novo cliente (0 pts)

### 3.3. Classificação de Impacto
- **160+ pontos:** Alto Impacto (ICP Ideal) - Prosseguir com prioridade máxima
- **100-159 pontos:** Médio Impacto (ICP Parcial) - Prosseguir com análise adicional
- **<100 pontos:** Baixo Impacto (Fora do ICP) - Revisar ou descartar

---

## 4. Exemplos Práticos

### 4.1. Personas de Compra Mapeadas
1. **Carlos Mendes (Gerente de Infraestrutura Governamental):**
   * *Objetivos:* Evitar indisponibilidade de serviços essenciais à população e garantir proteção de dados do Estado.
   * *Principal Dor:* Infraestrutura legada e riscos em caso de falha de backup/ataques de ransomware.
   * *Discurso:* "Não posso deixar o sistema parar."
2. **Fernanda Oliveira (CIO Corporativo):**
   * *Objetivos:* Escalar a operação de TI, reduzir custos operacionais (FinOps) e acelerar a transformação digital.
   * *Principal Dor:* Custos altos de licenciamento e complexidade de integração com legados.
   * *Discurso:* "Preciso transformar a TI em estratégia."
3. **Rafael Lima (Especialista em Segurança):**
   * *Objetivos:* Mitigar vulnerabilidades em tempo real, atingir compliance regulatório (LGPD) e monitorar superfícies expostas.
   * *Principal Dor:* Falta de recursos para cobrir monitoramento 24x7.
   * *Discurso:* "Preciso descobrir problemas antes que ocorram."

### 4.2. Casos Reais de Clientes (Baseline MVP)
Os 30 casos abaixo representam o histórico comercial consolidado e servem como exemplos práticos de aplicação do ICP:

**Setor Público (ICP Governamental):**
- **Univ. Horizonte (Educação):** Ausência de cópia imutável ou site alternativo para recuperação (Backup Exec, NAS)
- **Jurídica Prime (Jurídico):** Contas privilegiadas compartilhadas sem auditoria/controle (AD local)
- **CredMais (Financeiro):** Projeto de compliance para controle de acessos privilegiados (Active Directory)
- **Lex Prime (Jurídico):** Solução legada e revisão mandatória das políticas de proteção (Backup Exec)

**Setor Privado (ICP Corporativo):**
- **Alfa Logística (Logística):** Storage sem suporte; aplicações críticas lentas em picos (VMware, Dell PowerEdge)
- **Vida Plena (Hospital):** Auditoria recomendou evolução da proteção de acessos remotos (Microsoft Defender, VPN SSL)
- **SuperCompra (Varejo):** Switches fora da garantia e falhas de cobertura Wi-Fi (Cisco Catalyst 2960)
- **Metal Forte (Metalurgia):** Parque no fim do ciclo de vida; necessidade de modernização (VMware, Blade HPE Gen9)
- **AgroCampo (Agronegócio):** Dificuldade em monitorar serviços distribuídos multicloud/híbrido (Azure, VMware)
- **Energia Verde (Energia):** Monitoramento básico; tempo alto para achar causa-raiz de falhas (SolarWinds)
- **Const. Horizonte (Construção):** Reclamações de experiência de uso no acesso remoto via VPN (FortiGate, VPN IPsec)
- **Farmalife (Farmacêutica):** Requisitos regulatórios exigem revisão de proteção de dados (Veeam, ExaGrid)
- **AutoSteel (Indústria):** Gargalos no ambiente e storage no limite de capacidade (VMware, HPE ProLiant, NetApp)
- **Clínicas Vida (Saúde):** Necessidade de fortalecer endpoints contra ataques direcionados (FortiGate, Microsoft Defender)
- **MegaShop (Varejo):** Reclamações sobre cobertura de Wi-Fi e switches obsoletos (Cisco Catalyst, Aruba Wi-Fi)
- **UniBrasil (Educação):** Busca por visão mais completa para reduzir indisponibilidade (PRTG)
- **Cargo Express (Logística):** Abertura de novos CDs exige revisão de continuidade de negócio (Veeam)
- **Solar Tech (Energia):** Operação multicloud com dificuldades em monitorar saúde dos serviços (AWS, Azure)
- **BioLab (Farmacêutica):** Crescimento da operação exigindo revisão de virtualização (Hyper-V, Dell PowerEdge)
- **Construmax (Construção):** Aumento de chamados de suporte para acesso remoto corporativo (Cisco VPN)
- **Rede Sol (Hotelaria):** Instabilidades frequentes na rede sem fio de hóspedes/operação (HPE Aruba)
- **MineraSul (Mineração):** Monitoramento reativo que não detecta impactos na aplicação (Zabbix)
- **Sabor Real (Alimentos):** Storage principal se aproximando do fim do suporte oficial (Dell EMC Unity)
- **Alpha Seguros (Seguros):** Aumento de tentativas de acesso indevido em identidades (Microsoft 365)
- **CloudX (Tecnologia):** Necessidade de visibilidade operacional em ambiente hiperconvergente (Nutanix)
- **Via Norte (Transporte):** Dificuldade para administrar switches distribuídos geograficamente (FortiSwitch)
- **AgroVale (Agronegócio):** Demanda de alta disponibilidade para novos sistemas de gestão (VMware, Cisco)
- **Metal Prime (Indústria):** Antivírus legado incapaz de atender necessidades atuais de proteção (Symantec Endpoint)
- **DistribuiMax (Distribuição):** Implantação de estratégia corporativa unificada de backup (Dell PowerStore)
- **Hosp. Santa Clara (Saúde):** Modernização para alta disponibilidade clínica e cibersegurança (VMware, FortiGate)

*Para detalhes completos dos 30 casos, consulte KB-12: Baseline de Casos e Validação MVP*

---

## 5. Armadilhas (Gotchas)
> [!CAUTION]
> **Erros Comuns no Alinhamento com o ICP:**
> * Vender soluções puras de infraestrutura para decisores focados em continuidade de negócios ou conformidade de cibersegurança.
> * Ignorar a complexidade de processos licitatórios e prazos de emendas orçamentárias (ex: DFD, SEI) ao tratar com o ICP Governamental.
> * Subestimar a importância de maturidade tecnológica e urgência na qualificação de leads.

---

## 6. Referências
- **KB-01:** Portfólio de Soluções Clear IT
- **KB-02:** Processo de Pré-Vendas
- **KB-04:** Discovery Técnico
- **KB-05:** Ancoragem de Portfólio
- **KB-10:** Classificações de Oportunidades e Critérios de Qualificação
- **KB-12:** Baseline de Casos e Validação MVP (30 casos reais de clientes)
- **Questionários de Qualificação:** Documento com perguntas estruturadas por domínio

---

**Versão:** 2.2  
**Data:** 05/07/2026  
**Status:** Produção  
**Atualizações:** Removido campo de Persona do formulário (uso interno). Critérios avançados ajustados para 6 campos (maturidade, urgência, complexidade, compliance, financeiro, relacionamento). Adicionada referência ao KB-10. Adicionados 30 casos reais de clientes como exemplos práticos de ICP (KB-12).
