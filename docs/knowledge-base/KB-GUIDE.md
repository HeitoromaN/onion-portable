# Guia de Versionamento e Boas Práticas - Knowledge Base Clear IT

Este documento estabelece as diretrizes para manutenção, versionamento e organização da Knowledge Base (KB) da Clear IT.

---

## 1. Estrutura de Diretórios

```
docs/knowledge-base/
├── KB-GUIDE.md                    # Este documento - Guia de versionamento
├── README.md                      # Índice principal da KB
├── CHANGELOG.md                   # Histórico de alterações
├── core/                          # Conceitos fundamentais
│   ├── kb-01-portfolio-solucoes.md
│   ├── kb-02-processo-pre-vendas.md
│   ├── kb-03-personas-icp.md
│   └── kb-10-classificacoes-oportunidades.md
├── technical/                     # Documentação técnica
│   ├── kb-04-discovery-tecnico.md
│   ├── kb-05-ancoragem-portfolio.md
│   ├── kb-06-validacao-formatacao-campos.md
│   └── kb-07-ia-auxilio-sites.md
├── design/                        # Identidade visual e UI
│   ├── kb-08-identidade-ia.md
│   ├── kb-09-boas-praticas-cores-modo-claro-escuro.md
│   └── guia_de_palheta_de_cores.md
├── prompts/                       # Prompts e system prompts
│   └── kb-06-system-prompt-storytelling.md
├── legacy/                        # Documentos legados (mantidos para histórico)
│   ├── alinhamento_de_portifolio_personas_e_oportunidades_comerciais.md
│   ├── compilado_de_propostas_tecnicas.md
│   ├── documentacao_do_contexto_e_problematica.md
│   ├── matriz_de_responsabilidade.md
│   ├── personas_clearit.md
│   ├── questionarios_de_qualificacao_de_oportunidade_e_discovery_tecnico.md
│   └── relatorio_clearit.md
└── identidade-visual-clearit.md   # Documento geral de identidade
```

---

## 2. Nomenclatura de Arquivos

### 2.1. Arquivos KB (Knowledge Base)

**Formato:** `kb-XX-descricao.md`

- **XX:** Número sequencial de dois dígitos (01, 02, 03...)
- **descricao:** Nome descritivo em minúsculas com hífens
- **Exemplos:**
  - `kb-01-portfolio-solucoes.md`
  - `kb-02-processo-pre-vendas.md`
  - `kb-10-classificacoes-oportunidades.md`

### 2.2. Arquivos de Suporte

**Formato:** `nome-descritivo.md`

- Nome em minúsculas com hífens
- Descreve claramente o conteúdo
- **Exemplos:**
  - `guia_de_palheta_de_cores.md`
  - `matriz_de_responsabilidade.md`

---

## 3. Versionamento de Documentos

### 3.1. Cabeçalho de Versão

Todo documento KB deve conter no final:

```markdown
---

**Versão:** X.Y  
**Data:** DD/MM/YYYY  
**Status:** [Produção|Rascunho|Obsoleto]  
**Atualizações:** Breve descrição das alterações nesta versão
```

### 3.2. Semântica de Versão

- **X (Major):** Mudanças estruturais significativas, reorganização completa
- **Y (Minor):** Adição de seções, atualizações de conteúdo, correções importantes
- **Patch (implícito):** Correções menores, ajustes de formatação, typos

### 3.3. Exemplo de Versionamento

```markdown
**Versão:** 1.2  
**Data:** 01/07/2026  
**Status:** Produção  
**Atualizações:** Adicionada seção de critérios avançados, corrigido link para KB-10
```

---

## 4. Estrutura de Conteúdo dos Arquivos KB

### 4.1. Template Padrão

```markdown
# KB-XX: [Título do Documento]

---

## 1. Visão Geral
Descrição breve do propósito do documento e seu público-alvo.

---

## 2. Conceitos Chave
Lista de conceitos fundamentais com bullets ou definições.

---

## 3. [Seção Principal]
Conteúdo detalhado organizado em subseções.

---

## 4. Exemplos Práticos
Casos de uso, exemplos, cenários reais.

---

## 5. Armadilhas (Gotchas)
> [!CAUTION]
> **Erros Comuns:**
> * Erro 1
> * Erro 2

---

## 6. Referências
- **KB-XX:** Referência cruzada
- **Documento Externo:** Link ou descrição

---

**Versão:** 1.0  
**Data:** DD/MM/YYYY  
**Status:** Produção  
**Atualizações:** Descrição inicial
```

### 4.2. Convenções de Markdown

- **Títulos:** Use `#` para H1, `##` para H2, etc.
- **Negrito:** `**texto**` para ênfase
- **Itálico:** `*texto*` para termos estrangeiros
- **Código:** `` `código` `` para inline, ``` ``` ``` para blocos
- **Listas:** Use `-` para bullets numerados
- **Advertências:** Use `> [!CAUTION]` para avisos importantes
- **Notas:** Use `> [!NOTE]` para informações adicionais

---

## 5. Processo de Atualização

### 5.1. Checklist Antes de Atualizar

- [ ] Verificar se o documento já existe
- [ ] Identificar a categoria correta (core, technical, design, prompts, legacy)
- [ ] Incrementar versão (major ou minor)
- [ ] Atualizar data
- [ ] Descrever alterações no campo "Atualizações"
- [ ] Atualizar CHANGELOG.md
- [ ] Atualizar README.md se necessário
- [ ] Verificar referências cruzadas

### 5.2. Fluxo de Trabalho

1. **Criar/Editar Documento**
   - Seguir template padrão
   - Adicionar cabeçalho de versão
   - Usar formatação consistente

2. **Atualizar CHANGELOG.md**
   - Adicionar entrada com data
   - Descrever alterações
   - Referenciar documento

3. **Atualizar README.md**
   - Se for novo KB, adicionar ao índice
   - Se for atualização significativa, atualizar descrição

4. **Commit**
   - Mensagem descritiva seguindo padrão
   - Exemplo: `docs: atualiza KB-03 para versão 2.1 - remove persona do formulário`

---

## 6. CHANGELOG.md

### 6.1. Formato

```markdown
# Changelog - Knowledge Base Clear IT

Todas as alterações notáveis na Knowledge Base serão documentadas neste arquivo.

## [Versão] - Data

### Adicionados
- Novo KB-XX: Título do documento
- Nova seção em KB-YY: Descrição

### Alterados
- KB-XX: Atualizado para versão X.Y - Descrição
- Renomeado arquivo antigo.md para novo.md

### Removidos
- KB-XX: Motivo da remoção

### Corrigidos
- KB-XX: Correção de link/erro
```

### 6.2. Exemplo

```markdown
## 1.0 - 01/07/2026

### Adicionados
- KB-10: Classificações de Oportunidades e Critérios de Qualificação
- KB-GUIDE: Guia de Versionamento e Boas Práticas

### Alterados
- KB-03: Atualizado para versão 2.1 - Removido campo de Persona do formulário
- index.html: Adicionados tooltips nos selects de qualificação

### Reorganizados
- Estrutura de diretórios: Criadas pastas core/, technical/, design/, prompts/, legacy/
```

---

## 7. Referências Cruzadas

### 7.1. Como Referenciar Outros KBs

**No texto:**
```markdown
Consulte o [KB-01](./core/kb-01-portfolio-solucoes.md) para detalhes do portfólio.
```

**Na seção de Referências:**
```markdown
## 6. Referências
- **KB-01:** Portfólio de Soluções Clear IT
- **KB-02:** Processo de Pré-Vendas
```

### 7.2. Links Relativos

Sempre usar caminhos relativos:
- `./core/kb-01-portfolio-solucoes.md` (se em subdiretório)
- `../technical/kb-04-discovery-tecnico.md` (se cruzando diretórios)

---

## 8. Boas Práticas de Conteúdo

### 8.1. Clareza e Concisão
- Use linguagem simples e direta
- Evite jargões sem explicação
- Seja específico em exemplos

### 8.2. Manutenibilidade
- Estruture conteúdo em seções lógicas
- Use listas para informações enumeradas
- Mantenha parágrafos curtos

### 8.3. Consistência
- Use terminologia consistente em todos os KBs
- Siga o mesmo formato de exemplos
- Mantenha estrutura de cabeçalhos

### 8.4. Acessibilidade
- Descreva imagens com alt text
- Use contraste adequado em código
- Evite depender apenas de cor para informação

---

## 9. Responsabilidades

### 9.1. Papéis

- **@engineer:** Responsável por documentação técnica (KB-04, KB-05, KB-06)
- **@product:** Responsável por processos e personas (KB-02, KB-03)
- **@meta:** Responsável por prompts e IA (KB-05, KB-06 system prompt)
- **@docs:** Responsável por revisão e consistência geral

### 9.2. Processo de Revisão

1. Autor cria/atualiza documento
2. Revisor (conforme papel) valida conteúdo
3. Atualiza versão e changelog
4. Commit com mensagem descritiva
5. Pull request se necessário

---

## 10. Automação

### 10.1. Geração Automática do README

O README.md da Knowledge Base é gerado automaticamente pelo script `update-readme.ps1`. Este script:

- Lê todos os arquivos KB dos diretórios (core, technical, design, prompts)
- Extrai metadados (título, descrição, responsável, versão)
- Gera o README.md com a estrutura atualizada
- Atualiza automaticamente a versão e timestamp

### 10.2. Git Hook Pre-Commit

Um hook pre-commit é instalado em `.git/hooks/pre-commit` para executar automaticamente o script sempre que houver mudanças na knowledge base.

**Comportamento:**
- Detecta mudanças em `docs/knowledge-base/`
- Executa `update-readme.ps1` automaticamente
- Adiciona o README atualizado ao commit

**Para desativar o hook:**
```bash
git commit --no-verify -m "mensagem"
```

### 10.3. Execução Manual

Para atualizar o README manualmente:

```powershell
cd docs/knowledge-base
.\update-readme.ps1
```

Para forçar atualização mesmo sem mudanças:

```powershell
.\update-readme.ps1 -Force
```

### 10.4. Metadados Obrigatórios

Para que o script funcione corretamente, cada KB deve conter:

**Formato de Título:**
```markdown
# KB-XX: Título do Documento
```

**Seção de Visão Geral:**
```markdown
## 1. Visão Geral
Descrição breve do documento...
```

**Cabeçalho de Versão:**
```markdown
---
**Versão:** 1.0
**Data:** DD/MM/YYYY
**Status:** Produção
**Responsável:** @persona
**Atualizações:** Descrição
```

---

## 11. Ferramentas e Recursos

### 11.1. Validação

- Verificar links quebrados
- Validar sintaxe Markdown
- Testar código de exemplo

### 11.2. Ferramentas Recomendadas

- **Markdown Linter:** Para validação de sintaxe
- **Link Checker:** Para verificar links quebrados
- **VS Code:** Com extensão Markdown All in One

---

**Versão:** 1.1  
**Data:** 01/07/2026  
**Status:** Produção  
**Atualizações:** Adicionada seção de automação com script update-readme.ps1 e git hook pre-commit para geração automática do README
