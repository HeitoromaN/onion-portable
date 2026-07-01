# Contexto — Sync e Implementação Frontend

## Situação Inicial
O `/status` detectou desalinhamento entre `business-context-lite.md` (F-01/F-02 como Feito) e `technical-context-lite.md` (checklist 0/8). O `index.html` já implementava a maior parte das features, mas faltavam LocalStorage, busca na KB, responsividade, sanitização XSS e regra da IDE.

## Motivação
Garantir retomada confiável de sessão, fechar gaps técnicos documentados e avançar o backlog com F-03 especificada antes de codificar.

## Restrições
- Manter SPA monolítica em `index.html` (escopo MVP).
- Respeitar regra de ouro Onion: F-03 spec antes de código.
- Identidade visual Clear IT (Inter, orange palette) preservada.

## Referências
- Relatório `/status` da sessão anterior.
- KB-05 (ancoragem de portfólio) para testes T-04/T-05.
- ONION-MASTER-PROMPT.md seção 6 (Sync & Diagnóstico).
