# Clear IT AI Copilot — Server (API Bridge)

Backend local para conectar o frontend à OpenAI com RAG simples.

## Pré-requisitos

- [Node.js](https://nodejs.org/) 18+

## Instalação

```bash
cd server
npm install
copy .env.example .env
```

Edite `.env` e adicione sua `OPENAI_API_KEY`.

## Executar

```bash
npm start
```

Abra: **http://localhost:3001/index.html**

No painel **Conexão IA** do workspace:
- Modo: **API Real**
- Endpoint: `http://localhost:3001/api/chat` (preenchido automaticamente se usar o servidor)

## Endpoints

| Método | Rota | Descrição |
|--------|------|-----------|
| GET | `/api/health` | Status do servidor e OpenAI |
| POST | `/api/chat` | Chat com RAG + OpenAI |

### Payload `/api/chat`

```json
{
  "message": "Quais SLAs do SOC?",
  "history": [{ "role": "user", "content": "..." }, { "role": "agent", "content": "..." }],
  "intent": { "agent": "Knowledge Agent", "label": "Consulta KB" }
}
```

## Arquitetura (Update-02)

```
Frontend → POST /api/chat → RAG (keyword) → OpenAI → Resposta
```

Evolução futura: embeddings + ChromaDB + LangChain.
