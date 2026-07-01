# Decisões Tomadas — Sync e Implementação Frontend

## Decisão 1: Sincronizar checklist técnico com código existente
- **Contexto:** Business marcava F-01/F-02 como Feito, mas o plano técnico estava desatualizado.
- **Opções Consideradas:**
  - Opção A: Reverter status de negócio para "A Fazer".
  - Opção B: Atualizar checklist técnico refletindo implementação real e fechar gaps restantes.
- **Decisão:** Opção B.
- **Justificativa:** O código já entrega valor; a documentação deve refletir a realidade e registrar pendências pontuais.
- **Impacto:** `technical-context-lite.md` agora é fonte confiável para retomada.

## Decisão 2: Especificar F-03 antes de implementar
- **Contexto:** Próxima feature no backlog sem spec detalhada.
- **Decisão:** Preencher spec em `business-context-lite.md` e plano proposto em `technical-context-lite.md`, sem codificar ainda.
- **Justificativa:** Respeita invariante Spec-as-Code do Onion.
- **Impacto:** F-03 pronta para ciclo `@engineer` com aprovação do plano.

## Decisão 3: LocalStorage com chave versionada
- **Contexto:** Leads eram perdidos ao recarregar a página.
- **Decisão:** Persistir em `localStorage` com chave `clearit_leads_v1`.
- **Justificativa:** Alinha com arquitetura documentada e permite migração futura (v2).
- **Impacto:** Leads qualificados persistem entre sessões do navegador.
