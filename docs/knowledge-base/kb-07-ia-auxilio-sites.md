# KB-07 · Inteligências Artificiais de Auxílio em Sites

## 1. Objetivo

Este documento define as diretrizes para implementação e comportamento de inteligências artificiais de auxílio (chatbots, assistentes virtuais, copilots) em sites corporativos, garantindo alinhamento com a imagem da empresa, boas práticas de UX e reconhecimento adequado do perfil do usuário.

## 2. Comportamento de IAs de Auxílio

### 2.1. Princípios Fundamentais

#### Transparência
- A IA deve se identificar claramente como um sistema automatizado
- Não deve fingir ser humano ou ocultar sua natureza artificial
- Deve declarar suas limitações de forma honesta

#### Consistência
- Respostas devem ser consistentes com a voz e tom da marca
- Comportamento previsível e confiável em todas as interações
- Manutenção de contexto ao longo da conversa

#### Empatia
- Reconhecimento de frustração ou confusão do usuário
- Oferecimento de alternativas quando não conseguir resolver
- Escuta ativa (análise de contexto e intenções)

### 2.2. Padrões de Comunicação

#### Tom e Voz
- **Profissional:** Linguagem formal, mas acessível
- **Proativo:** Antecipa necessidades e oferece ajuda
- **Respeitoso:** Trata o usuário com dignidade e paciência
- **Objetivo:** Fornece informações claras e concisas

#### Estrutura de Respostas
1. **Saudação contextual:** Reconhecimento do momento da interação
2. **Compreensão do problema:** Recapitulação ou confirmação do entendimento
3. **Solução proposta:** Explicação clara e passo a passo
4. **Verificação:** Confirmação de que a resposta foi útil
5. **Encerramento:** Oferecimento de ajuda adicional

## 3. Alinhamento com Imagem da Empresa

### 3.1. Representação da Marca

#### Identidade Visual
- Avatar ou ícone consistente com identidade visual da empresa
- Cores e tipografia alinhadas com guidelines de branding
- Interface integrada ao design do site

#### Valores Corporativos
- A IA deve refletir os valores da empresa (inovação, confiança, excelência)
- Respeito à privacidade e segurança de dados
- Compromisso com a satisfação do cliente

#### Posicionamento
- **Premium:** IA sofisticada, respostas detalhadas, linguagem refinada
- **Acessível:** IA amigável, linguagem simples, abordagem direta
- **Técnica:** IA especializada, jargão técnico apropriado, precisão

### 3.2. Gestão de Expectativas

#### Capacidades Declaradas
- Lista clara de serviços que a IA pode oferecer
- Limitações explicitadas (ex: "Não posso processar pagamentos")
- Indicação de quando escalar para humano

#### Promessas Realistas
- Evitar promessas de tempo de resposta irreais
- Não garantir soluções que dependem de terceiros
- Ser transparente sobre processamento de dados

## 4. Boas Práticas de Implementação

### 4.1. Design de Interação

#### Onboarding
- Mensagem de boas-vindas explicando capacidades
- Sugestões de perguntas comuns para iniciar conversa
- Guia visual de como usar a interface

#### Feedback Visual
- Indicadores de digitação (typing indicator)
- Confirmação de envio de mensagem
- Estado do sistema (online/offline/manutenção)

#### Acessibilidade
- Suporte a leitores de tela
- Navegação por teclado
- Contraste adequado para leitura

### 4.2. Gestão de Contexto

#### Memória de Conversa
- Manutenção de contexto das últimas 5-10 mensagens
- Reconhecimento de informações fornecidas anteriormente
- Capacidade de retomar conversas interrompidas

#### Personalização
- Adaptação de respostas com base no histórico do usuário
- Reconhecimento de preferências declaradas
- Sugestões personalizadas baseadas em comportamento

### 4.3. Escalonamento Inteligente

#### Critérios para Transferência
- Complexidade beyond AI capabilities
- Solicitação explícita de atendente humano
- Situações de frustração detectadas (repetições, linguagem negativa)
- Assuntos sensíveis (dados financeiros, informações pessoais)

#### Handoff Suave
- Resumo da conversa para o atendente humano
- Contexto do problema e tentativas de solução
- Informações do usuário já coletadas

## 5. Reconhecimento de Função e Perfil do Usuário

### 5.1. Identificação do Perfil

#### Segmentos Comuns
- **Novo usuário:** Precisa de orientação básica, explicações detalhadas
- **Usuário recorrente:** Busca eficiência, respostas diretas
- **Usuário técnico:** Prefere jargão, detalhes técnicos
- **Usuário não-técnico:** Precisa de linguagem simples, analogias

#### Sinais de Identificação
- Nível de detalhe nas perguntas
- Uso de terminologia técnica
- Frequência de interações
- Histórico de navegação no site

### 5.2. Adaptação ao Perfil

#### Linguagem
- Ajuste de complexidade vocabular
- Uso de analogias vs. termos técnicos
- Nível de detalhe nas explicações

#### Profundidade de Resposta
- Resumos para usuários que buscam rapidez
- Explicações detalhadas para usuários curiosos
- Links para documentação técnica quando apropriado

#### Tom
- Mais formal para usuários corporativos
- Mais casual para usuários B2C
- Adaptativo com base no feedback do usuário

### 5.3. Reconhecimento de Intenção

#### Categorias de Intenção
- **Informacional:** Busca de dados, fatos, especificações
- **Transacional:** Execução de ações, processos
- **Suporte:** Resolução de problemas, troubleshooting
- **Exploratória:** Descoberta de recursos, capacidades

#### Detecção de Intenção
- Análise de keywords e frases-chave
- Contexto da navegação no site
- Padrões de comportamento em conversas anteriores

## 6. Guardrails e Limitações

### 6.1. Limites Éticos

#### Privacidade
- Não solicitar informações sensíveis desnecessárias
- Criptografia de dados em trânsito
- Conformidade com LGPD/GDPR

#### Segurança
- Validação de inputs para evitar injeção de código
- Rate limiting para prevenir abuso
- Monitoramento de comportamentos suspeitos

#### Responsabilidade
- Não dar conselhos médicos, legais ou financeiros
- Indicar profissionais apropriados quando necessário
- Não fazer diagnósticos ou prescrições

### 6.2. Limites Técnicos

#### Capacidades Declaradas
- Lista clara do que a IA pode e não pode fazer
- Indicação de quando informações podem estar desatualizadas
- Aviso sobre dependência de sistemas externos

#### Fallback Mechanisms
- Respostas genéricas quando não entender
- Oferecimento de contato humano em caso de falha
- Logs de erros para melhoria contínua

## 7. Métricas de Sucesso

### 7.1. KPIs de Performance

#### Engajamento
- Taxa de utilização (usuários ativos / visitantes)
- Tempo médio de conversa
- Número de interações por sessão

#### Satisfação
- Feedback positivo/negativo após resposta
- Taxa de resolução sem escalonamento
- NPS (Net Promoter Score) específico da IA

#### Eficiência
- Tempo até primeira resposta
- Número de mensagens até resolução
- Taxa de transferência para humanos

### 7.2. Melhoria Contínua

#### Análise de Conversas
- Identificação de padrões de perguntas frequentes
- Detecção de gaps de conhecimento
- Análise de sentimentos ao longo da conversa

#### A/B Testing
- Teste de diferentes abordagens de resposta
- Comparação de eficácia de onboarding
- Experimentação com tom e estilo

## 8. Caso Específico: Onion Orquestrador (Clear IT)

### 8.1. Persona Definida

#### Identidade
- **Nome:** Onion Orquestrador
- **Avatar:** 🧅 (referência ao nome do projeto)
- **Papel:** Assistente de pré-vendas e engenharia de soluções

#### Voz e Tom
- **Profissional:** Linguagem técnica adequada para B2B
- **Especializado:** Conhecimento profundo do portfólio Clear IT
- **Ancorado:** Respostas estritamente baseadas nas KBs
- **Guardrails:** Alertas explícitos sobre serviços fora do escopo

### 8.2. Capacidades Específicas

#### Domínios de Conhecimento
- Portfólio de soluções (SOC, COps, Nutanix, Fortinet, Veeam)
- Processos RACI e pré-vendas
- ICP e personas de clientes
- Discovery técnico e qualificação de leads

#### Guardrails de Escopo
- Detecção de serviços fora do portfólio
- Respostas com frase canônica de lacuna
- Sinalização de exclusões contratuais padrão

### 8.3. Integração com Workflow

#### Fluxo de Pré-Vendas
1. Qualificação de leads (F-01)
2. Discovery técnico (F-02)
3. Recomendação de escopo (F-03)
4. Chat livre para dúvidas (F-05)

#### Contexto de Sessão
- Acesso a leads qualificados do LocalStorage
- Referência a oportunidades em andamento
- Manutenção de contexto entre features

## 9. Referências

- Microsoft Design Guidelines for AI Assistants
- Google's AI Principles
- IBM Design Language for AI
- OpenAI Best Practices for Chatbots
- Nielsen Norman Group: UX for AI Assistants

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Responsável:** @meta  
**Status:** Ativo
