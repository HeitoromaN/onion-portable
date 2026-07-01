# Central de Conhecimento (Knowledge Base) — Pré-Vendas Clear IT

Este diretório armazena a base de conhecimento consolidada sobre o ecossistema de soluções, personas, matrizes e questionários técnicos para otimização da área de pré-vendas da Clear IT.

---

## 📚 Estrutura da Knowledge Base

```
docs/knowledge-base/
├── KB-GUIDE.md                    # Guia de versionamento e boas práticas
├── README.md                      # Este documento - Índice principal
├── CHANGELOG.md                   # Histórico de alterações
├── core/                          # Conceitos fundamentais
├── technical/                     # Documentação técnica
├── design/                        # Identidade visual e UI
├── prompts/                       # Prompts e system prompts
└── legacy/                        # Documentos legados (histórico)
```

---

## 🗂️ Índice de Artigos (KBs)

### Core (Conceitos Fundamentais)

| Código | Artigo de Conhecimento | Descrição | Responsável |
| :--- | :--- | :--- | :--- |
| **[KB-01](./core/kb-01-portfolio-solucoes.md)** | Portfólio de Soluções e Parceiros | Detalha as soluções de infraestrutura, segurança, SOC, COps e parceiros homologados da Clear IT. | `@engineer` / `@product` |
| **[KB-02](./core/kb-02-processo-pre-vendas.md)** | Processo de Pré-Vendas e RACI | Documenta o fluxo de oportunidades comerciais e a divisão de papéis e responsabilidades. | `@product` / `@docs` |
| **[KB-03](./core/kb-03-personas-icp.md)** | Perfis de Clientes (ICP) e Personas | Descreve as características, dores e discursos dos perfis ideais de clientes privados e governamentais. | `@product` |
| **[KB-10](./core/kb-10-classificacoes-oportunidades.md)** | Classificações de Oportunidades | Justificativas detalhadas para cada classificação e critérios de qualificação de oportunidades. | `@engineer` |

### Technical (Documentação Técnica)

| Código | Artigo de Conhecimento | Descrição | Responsável |
| :--- | :--- | :--- | :--- |
| **[KB-04](./technical/kb-04-discovery-tecnico.md)** | Questionários de Discovery Técnico | Concentra perguntas consultivas estruturadas por domínios para guiar as reuniões com leads. | `@engineer` / `@product` |
| **[KB-05](./technical/kb-05-ancoragem-portfolio.md)** | Ancoragem de Portfólio em Agentes | Guia técnico e prompts de exemplo para ancorar classificadores de IA no portfólio oficial. | `@meta` / `@engineer` |
| **[KB-06](./technical/kb-06-validacao-formatacao-campos.md)** | Validação e Formatação de Campos | Documenta regras de validação e formatação para campos do formulário (CNPJ, CPF, SEI). | `@engineer` |
| **[KB-07](./technical/kb-07-ia-auxilio-sites.md)** | IA Auxílio Sites | Documentação sobre uso de IA para auxílio em desenvolvimento de sites. | `@engineer` |

### Design (Identidade Visual e UI)

| Código | Artigo de Conhecimento | Descrição | Responsável |
| :--- | :--- | :--- | :--- |
| **[KB-08](./design/kb-08-identidade-ia.md)** | Identidade IA | Define a identidade visual, persona e comportamento da IA da Clear IT. | `@product` / `@design` |
| **[KB-09](./design/kb-09-boas-praticas-cores-modo-claro-escuro.md)** | Boas Práticas de Cores e Temas | Guia completo de cores, paletas e implementação de modo claro/escuro. | `@design` |
| **[KB-11](./design/kb-11-estruturacao-sites-hierarquia-visual.md)** | Estruturação de Sites e Hierarquia Visual | Diretrizes para estruturação de sites, hierarquia visual, clareza de informações e técnicas de atenção. | `@design` |
| **[Guia de Paleta de Cores](./design/guia_de_palheta_de_cores.md)** | Paleta de Cores Clear IT | Documentação detalhada da paleta de cores da marca Clear IT. | `@design` |

### Prompts (Prompts e System Prompts)

| Código | Artigo de Conhecimento | Descrição | Responsável |
| :--- | :--- | :--- | :--- |
| **[KB-06](./prompts/kb-06-system-prompt-storytelling.md)** | System Prompt — Storytelling Técnico | Prompt pronto para o agente de classificação de domínios, geração de perguntas e sinalização de lacunas de portfólio. | `@meta` / `@product` |

### Legacy (Documentos Legados)

Documentos mantidos para histórico técnico e referência. Não devem ser usados como fonte principal.

- `alinhamento_de_portifólio_personas_e_oportunidades comerciais.md`
- `personas_clearit.md`
- `questionarios_de_qualificacao_de_oportunidade_e_discovery_tecnico.md`
- `relatorio_clearit.md`

---

## 📖 Documentação de Suporte

- **[KB-GUIDE.md](./KB-GUIDE.md):** Guia completo de versionamento, boas práticas e manutenção da Knowledge Base
- **[CHANGELOG.md](./CHANGELOG.md):** Histórico detalhado de todas as alterações na KB

---

## 🚀 Como Contribuir

### Processo de Atualização

1. Consulte o **[KB-GUIDE.md](./KB-GUIDE.md)** para entender as diretrizes
2. Identifique a categoria correta (core, technical, design, prompts)
3. Siga o template padrão de estrutura
4. Atualize a versão e o CHANGELOG.md
5. Atualize este README se necessário

### Versionamento

Todos os documentos KB seguem versionamento semântico (X.Y.Z):
- **X (Major):** Mudanças estruturais significativas
- **Y (Minor):** Adição de seções, atualizações de conteúdo
- **Z (Patch):** Correções menores, ajustes de formatação

---

## 📝 Convenções

### Estrutura dos Arquivos KB

Todos os documentos KB seguem a estrutura padrão:
1. Visão Geral
2. Conceitos Chave
3. Conteúdo Principal
4. Exemplos Práticos
5. Armadilhas (Gotchas)
6. Referências
7. Cabeçalho de Versão

### Nomenclatura

- **Arquivos KB:** `kb-XX-descricao.md`
- **Arquivos de suporte:** `nome-descritivo.md`
- **Diretórios:** minúsculas, sem espaços

---

> [!NOTE]
> Para mais detalhes sobre manutenção, versionamento e boas práticas, consulte o **[KB-GUIDE.md](./KB-GUIDE.md)**.

---

**Última Atualização:** 01/07/2026  
**Versão da KB:** 2.0
