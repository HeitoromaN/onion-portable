# Changelog - Knowledge Base Clear IT

Todas as alterações notáveis na Knowledge Base serão documentadas neste arquivo.

O formato é baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

---

## [2.5] - 08/07/2026

### Adicionados
- **Conexão IA (API Bridge):** Painel de configurações na barra lateral do chat para alternar entre simulação e conexão direta com endpoint HTTP POST e chaves de API secretas.
- **Micro-interações:** Indicador visual de digitação (typing indicator) com transição de status dinâmico (Análise, KBs, ICP, Geração).
- **Animações de Transição:** Animações nativas em CSS para fade-in nas trocas de tela e nas mensagens entrantes.

### Alterados
- **Paleta de Cores (Update-02):** Cores alteradas para os padrões recomendados de alta estética digital baseados no dark-mode moderno (Background #020617, Primário #2563EB, etc).
- **Arredondamento de Bordas:** Mudança global do contorno de cards e caixas de 10px para 20px para suavização da interface.

---

## [2.4] - 08/07/2026

### Adicionados
- **kb-14-proporcoes-portabilidade-dispositivos.md:** Novo artigo de conhecimento sobre dimensões, proporções e portabilidade responsiva em múltiplos dispositivos móveis e desktops.

---

## [2.3] - 01/07/2026

### Simplificados
- **update-readme.ps1:** Script simplificado para execução direta no diretório sem parâmetros complexos
- Removidos hooks git complexos que causavam problemas de compatibilidade
- Instruções de uso simplificadas: apenas executar `.\update-readme.ps1` no diretório

### Alterados
- **KB-GUIDE.md:** Atualizado para versão 1.2 com instruções diretas e simplificadas
- **README.md:** Atualizado com instruções simplificadas de uso

---

## [2.2] - 01/07/2026

### Adicionados
- **update-readme.ps1:** Script PowerShell para geração automática do README da Knowledge Base
- Seção de automação no KB-GUIDE.md com instruções de uso

### Alterados
- **KB-GUIDE.md:** Atualizado para versão 1.1 com seção de automação
- **README.md:** Agora gerado automaticamente pelo script, não deve ser editado manualmente

### Melhorias
- Script lê metadados de todos os KBs e gera README estruturado
- Suporte a execução manual com flag -Force
- Metadados obrigatórios definidos para funcionamento do script

---

## [2.1] - 01/07/2026

### Adicionados
- **kb-11-estruturacao-sites-hierarquia-visual.md:** Documento sobre estruturação de sites, hierarquia visual, clareza de informações e técnicas de atenção visual

---

## [2.0] - 01/07/2026

### Adicionados
- **KB-GUIDE.md:** Guia de Versionamento e Boas Práticas para manutenção da KB
- **CHANGELOG.md:** Histórico de alterações da Knowledge Base
- **kb-10-classificacoes-oportunidades.md:** Documento de justificativa de classificações e critérios de qualificação

### Alterados
- **kb-03-personas-icp.md:** Atualizado para versão 2.1
  - Removido campo de Persona do formulário (uso interno)
  - Critérios avançados ajustados para 6 campos (maturidade, urgência, complexidade, compliance, financeiro, relacionamento)
  - Adicionada referência ao KB-10
- **index.html:** Sistema de qualificação enriquecido
  - Removido campo de Persona do formulário
  - Adicionados tooltips em todos os selects com descrições e pontuação
  - Ajustado cálculo de score (100 → 180 pontos)
  - Atualizado score máximo para /180

### Reorganizados
- **Estrutura de diretórios:** Criadas pastas organizadas por categoria:
  - `core/`: Conceitos fundamentais (KB-01, KB-02, KB-03, KB-10)
  - `technical/`: Documentação técnica (KB-04, KB-05, KB-06, KB-07)
  - `design/`: Identidade visual e UI (KB-08, KB-09, guia de cores)
  - `prompts/`: Prompts e system prompts (KB-06 system prompt)
  - `legacy/`: Documentos legados mantidos para histórico

### Movidos para Legacy
- `alinhamento_de_portifólio_personas_e_oportunidades comerciais.md`
- `personas_clearit.md`
- `questionarios_de_qualificacao_de_oportunidade_e_discovery_tecnico.md`
- `relatorio_clearit.md`

---

## [1.0] - Data Anterior

### Adicionados
- **KB-01:** Portfólio de Soluções e Parceiros
- **KB-02:** Processo de Pré-Vendas e RACI
- **KB-03:** Perfis de Clientes (ICP) e Personas
- **KB-04:** Questionários de Discovery Técnico
- **KB-05:** Ancoragem de Portfólio em Agentes
- **KB-06:** System Prompt - Storytelling Técnico
- **KB-06:** Validação e Formatação de Campos
- **KB-07:** IA Auxílio Sites
- **KB-08:** Identidade IA
- **KB-09:** Boas Práticas Cores Modo Claro Escuro
- Documentos legados de contexto e problemática
- Matriz de responsabilidade
- Guias de identidade visual

---

## Convenções de Changelog

### Categorias de Alterações

- **Adicionados:** Novos recursos, documentos ou seções
- **Alterados:** Mudanças em funcionalidades existentes
- **Reorganizados:** Mudanças na estrutura de diretórios ou organização
- **Movidos para Legacy:** Documentos descontinuados mas mantidos para histórico
- **Removidos:** Recursos ou documentos removidos
- **Corrigidos:** Correções de bugs, links ou erros
- **Deprecados:** Recursos marcados para remoção futura

### Formato de Versão

- **Major (X):** Mudanças estruturais significativas, reorganização completa
- **Minor (Y):** Adição de seções, atualizações de conteúdo, correções importantes
- **Patch (Z):** Correções menores, ajustes de formatação, typos

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Status:** Produção
