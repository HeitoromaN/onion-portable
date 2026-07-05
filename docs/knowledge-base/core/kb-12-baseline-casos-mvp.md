# KB-12: Baseline de Casos e Validação MVP — Pré-Vendas Clear IT

> **Propósito deste arquivo:** Documentar o cenário legado (processos manuais e dores originais) e consolidar os 30 casos preliminares de clientes mapeados que servem como *input* oficial de validação para as features do AI Copilot (especialmente F-01 e F-02).

---

## 1. O Cenário Legado (A Dor Original)
Antes da implementação do AI Copilot, o processo de qualificação e levantamento técnico apresentava as seguintes características e gargalos:

* [cite_start]**Processo Manual e Fragmentado:** A construção de perguntas de levantamento dependia da interpretação manual do briefing e de consultas a múltiplas fontes[cite: 456, 459].
* [cite_start]**Dependência de Especialistas:** A qualidade da descoberta técnica estava atrelada à experiência individual de cada profissional, gerando variação de qualidade e falta de padronização[cite: 472].
* [cite_start]**Retrabalho e Ineficiência:** Perguntas incompletas durante a primeira reunião geravam novas rodadas com os clientes, ajustes frequentes de escopo e reabertura de discussões técnicas[cite: 478].
* [cite_start]**Desalinhamento de Comunicação:** A ausência de um padrão único dificultava o alinhamento de expectativas entre a equipe de vendas, pré-vendas, operação (pós-vendas) e o cliente final[cite: 485].

---

## 2. Catálogo de Casos Preliminares (Baseline do MVP)
Os 30 cenários abaixo representam o histórico comercial consolidado. Eles atuam como os "dados preliminares enviados pelo Account Manager (AM)" que a IA deve ser capaz de interpretar para gerar o roteiro estruturado (Storytelling Técnico).

| ID | Cliente | Segmento | Tecnologias Mapeadas | Gatilho / Dor do Cliente |
|---|---|---|---|---|
| **01** | Alfa Logística | Logística | VMware, Dell PowerEdge, Dell EMC Unity | [cite_start]Storage sem suporte; aplicações críticas lentas em picos[cite: 569, 573]. |
| **02** | Vida Plena | Hospital | Microsoft Defender, VPN SSL | [cite_start]Auditoria recomendou evolução da proteção de acessos remotos[cite: 581, 585]. |
| **03** | SuperCompra | Varejo | Cisco Catalyst 2960, AP Wi-Fi 5 | [cite_start]Switches fora da garantia e falhas de cobertura Wi-Fi nas lojas[cite: 591, 593]. |
| **04** | Univ. Horizonte | Educação | Backup Exec, NAS | [cite_start]Ausência de cópia imutável ou site alternativo para recuperação[cite: 600, 603]. |
| **05** | Metal Forte | Metalurgia | VMware, Blade HPE Gen9 | [cite_start]Parque no fim do ciclo de vida; necessidade de modernização[cite: 610, 612]. |
| **06** | AgroCampo | Agronegócio | Azure, VMware | [cite_start]Dificuldade em monitorar serviços distribuídos (multicloud/híbrido)[cite: 618, 621]. |
| **07** | Jurídica Prime | Jurídico | AD local, contas admin | [cite_start]Contas privilegiadas compartilhadas sem auditoria/controle[cite: 627, 629]. |
| **08** | Energia Verde | Energia | SolarWinds | [cite_start]Monitoramento básico; tempo alto para achar causa-raiz de falhas[cite: 635, 637, 638]. |
| **09** | Const. Horizonte | Construção | FortiGate, VPN IPsec | [cite_start]Reclamações de experiência de uso no acesso remoto via VPN[cite: 644, 647]. |
| **10** | Farmalife | Farmacêutica| Veeam, ExaGrid | [cite_start]Requisitos regulatórios exigem revisão de proteção de dados[cite: 653, 655]. |
| **11** | AutoSteel | Indústria | VMware, HPE ProLiant, NetApp | [cite_start]Gargalos no ambiente e storage no limite de capacidade[cite: 662, 664, 665]. |
| **12** | Clínicas Vida | Saúde | FortiGate, Microsoft Defender | [cite_start]Necessidade de fortalecer endpoints contra ataques direcionados[cite: 672, 675]. |
| **13** | MegaShop | Varejo | Cisco Catalyst, Aruba Wi-Fi | [cite_start]Reclamações sobre cobertura de Wi-Fi e switches obsoletos[cite: 681, 683]. |
| **14** | CredMais | Financeiro | Active Directory | [cite_start]Projeto de compliance para controle de acessos privilegiados[cite: 689, 691]. |
| **15** | UniBrasil | Educação | PRTG | [cite_start]Busca por visão mais completa para reduzir indisponibilidade[cite: 698, 700]. |
| **16** | Cargo Express | Logística | Veeam | [cite_start]Abertura de novos CDs exige revisão de continuidade de negócio[cite: 706, 708]. |
| **17** | Solar Tech | Energia | AWS, Azure | [cite_start]Operação multicloud com dificuldades em monitorar saúde dos serviços[cite: 715, 717]. |
| **18** | BioLab | Farmacêutica| Hyper-V, Dell PowerEdge | [cite_start]Crescimento da operação exigindo revisão de virtualização[cite: 723, 725]. |
| **19** | Construmax | Construção | Cisco VPN | [cite_start]Aumento de chamados de suporte para acesso remoto corporativo[cite: 731, 733]. |
| **20** | Rede Sol | Hotelaria | HPE Aruba | [cite_start]Instabilidades frequentes na rede sem fio de hóspedes/operação[cite: 739, 741]. |
| **21** | MineraSul | Mineração | Zabbix | [cite_start]Monitoramento reativo que não detecta impactos na aplicação[cite: 747, 749]. |
| **22** | Sabor Real | Alimentos | Dell EMC Unity | [cite_start]Storage principal se aproximando do fim do suporte oficial[cite: 755, 757]. |
| **23** | Alpha Seguros | Seguros | Microsoft 365 | [cite_start]Aumento de tentativas de acesso indevido em identidades[cite: 763, 765]. |
| **24** | CloudX | Tecnologia | Nutanix | [cite_start]Necessidade de visibilidade operacional em ambiente hiperconvergente[cite: 771, 773]. |
| **25** | Via Norte | Transporte | FortiSwitch | [cite_start]Dificuldade para administrar switches distribuídos geograficamente[cite: 779, 781]. |
| **26** | Lex Prime | Jurídico | Backup Exec | [cite_start]Solução legada e revisão mandatória das políticas de proteção[cite: 787, 789]. |
| **27** | AgroVale | Agronegócio | VMware, Cisco | [cite_start]Demanda de alta disponibilidade para novos sistemas de gestão[cite: 795, 797]. |
| **28** | Metal Prime | Indústria | Symantec Endpoint | [cite_start]Antivírus legado incapaz de atender necessidades atuais de proteção[cite: 803, 805]. |
| **29** | DistribuiMax | Distribuição | Dell PowerStore | [cite_start]Implantação de estratégia corporativa unificada de backup[cite: 811, 813]. |
| **30** | Hosp. Santa Clara| Saúde | VMware, FortiGate | [cite_start]Modernização para alta disponibilidade clínica e cibersegurança[cite: 819, 821]. |

---

## 3. Referências
- **KB-01:** Portfólio de Soluções Clear IT
- **KB-02:** Processo de Pré-Vendas
- **KB-03:** ICP e Personas
- **KB-04:** Discovery Técnico
- **business-context-lite.md:** Especificações de Features F-01 e F-02

---

**Versão:** 1.0  
**Data:** 05/07/2026  
**Status:** Produção  
**Responsável:** @product  
**Baseado em:** Histórico comercial consolidado de 30 casos preliminares