# Recebidos - Atualização Estratégica para o Onion IDE

## Estado atual

As alterações implementadas estão alinhadas com a estratégia
discutida: - Chat como elemento central. - Interface simplificada. -
Evolução da KB. - Preparação para agentes invisíveis.

A partir deste ponto, o foco muda da organização da interface para a
implementação de uma IA funcional.

## Avaliação

Estimativa de atendimento dos feedbacks anteriores: **70--75%**.

Pendências: - IA realmente operacional. - Memória de contexto. -
Orquestração automática dos agentes. - Feedback visual durante o
processamento. - Refinamento visual premium.

## Diretrizes de UX/UI

### Identidade

Inspirar-se em: - ChatGPT - Linear - Raycast - Vercel - Notion AI -
Perplexity

### Paleta

-   Background: #020617
-   Surface: #0F172A
-   Borders: #1E293B
-   Primary: #2563EB
-   Hover: #3B82F6
-   Accent IA: #7C3AED
-   Success: #22C55E
-   Texto: #F8FAFC
-   Texto secundário: #94A3B8

### Tipografia

Priorizar: - Inter - Geist - Manrope - IBM Plex Sans

Hierarquia forte e textos menores.

### Componentes

-   Bordas arredondadas (18--24px).
-   Sombras suaves.
-   Glassmorphism apenas em elementos de destaque.
-   Espaçamento generoso.

### Microinterações

Adicionar: - Fade-in e slide ao abrir telas. - Hover com leve scale e
translate. - Animação de mensagens chegando. - Indicador "IA
digitando". - Estados de processamento: - Extraindo documento; -
Consultando KB; - Calculando ICP; - Gerando resposta.

Essas animações devem comunicar inteligência e não apenas estética.

## IA prática (nova prioridade)

O projeto entra agora em uma nova fase.

### Objetivo

Transformar o protótipo em um assistente realmente funcional.

### Decisão arquitetural

Não utilizar RagFlow no MVP.

Construir um RAG simples com:

Frontend → Backend/API → OpenAI Responses API → Base de Conhecimento →
Resposta

### Evolução prevista

1.  Chunking dos documentos.
2.  Embeddings.
3.  Busca vetorial.
4.  Montagem de contexto.
5.  Resposta do LLM.

Ferramentas candidatas: - OpenAI API - ChromaDB - LangChain (opcional)

## Sincronização

A discussão técnica sobre IA continuará centralizada nesta conversa
(ChatGPT).

O Onion IDE permanece como executor das implementações e deverá
consultar este canal para decisões de produto, UX, arquitetura e
evolução da inteligência.

## Próximas prioridades

P0. IA funcional. P1. Refinamento visual premium. P2. Upload multimodal
(PDF, DOCX, imagens, áudio). P3. Agentes invisíveis. P4. Memória de
contexto.
