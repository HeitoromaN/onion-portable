# Proposta de Evolução do Produto --- Onion (ChatGPT)

## Contexto

Após analisar o relatório executivo e os feedbacks do professor, a
principal conclusão é que a engenharia, documentação e arquitetura já
demonstram maturidade. O maior ponto de evolução está na **experiência
de uso (UX)** e no **posicionamento do produto**.

## Mudança de visão

O MVP atual demonstra capacidades técnicas.

A próxima versão deve demonstrar **uso real**.

O objetivo deixa de ser apresentar módulos e passa a permitir que o
consultor simplesmente trabalhe.

## Diagnóstico

Hoje a interface se aproxima de um painel administrativo, contendo
módulos como:

-   Dashboard
-   Lead Scoring
-   Discovery
-   Escopo
-   Auditoria
-   Chat
-   Knowledge Base

Embora tecnicamente corretos, esses módulos obrigam o usuário a decidir
qual fluxo seguir.

O consultor comercial não pensa em funcionalidades.

Ele pensa em resolver o problema do cliente.

## Nova proposta

Transformar o produto em um **Workspace Inteligente do Consultor**.

A interface deve conter praticamente apenas:

-   Chat central
-   Campo de texto
-   Sugestões rápidas
-   Botão de voz
-   Botão de anexos
-   Histórico

Todo o restante acontece automaticamente.

## Fluxo ideal

Usuário envia qualquer informação:

-   Texto
-   Áudio
-   PDF
-   DOCX
-   Imagem
-   Print
-   E-mail
-   RFP
-   Edital

↓

A IA identifica a intenção

↓

Aciona automaticamente os agentes internos

↓

Entrega uma resposta consolidada.

## Agentes invisíveis

As features existentes (F-01 a F-05) não precisam desaparecer do
projeto.

Devem desaparecer apenas da interface.

Internamente continuam existindo como agentes especializados:

-   Lead Agent
-   Discovery Agent
-   Proposal Agent
-   Knowledge Agent
-   Audit Agent

O usuário conversa apenas com um único assistente.

## Benefícios

-   Redução drástica da complexidade visual.
-   Experiência mais natural.
-   Menor curva de aprendizado.
-   Demonstração mais impactante.
-   IA como interface principal.

## Feedback adicional do professor

A interface deve permitir:

-   escrever perguntas;
-   utilizar sugestões rápidas;
-   anexar imagens;
-   anexar PDFs;
-   anexar DOCX;
-   anexar outros documentos relevantes;
-   utilizar entrada por voz (ditado).

Tudo deve acontecer em um único fluxo.

## Prioridades

### P0 --- Reposicionamento

Transformar o sistema de plataforma de módulos em workspace
conversacional.

### P1 --- Simplificação

Remover aproximadamente 70--80% da interface atual.

### P2 --- Multimodalidade

Adicionar suporte para:

-   voz;
-   imagens;
-   PDFs;
-   DOCX;
-   capturas de tela.

### P3 --- Orquestração automática

A IA deve identificar a intenção e acionar automaticamente os agentes
internos.

### P4 --- Nova experiência

Substituir a pergunta:

"Qual funcionalidade deseja utilizar?"

por

"O que você recebeu do cliente hoje?"

## Observação final

Esta evolução preserva toda a arquitetura existente, Knowledge Base,
regras de negócio e agentes especializados, alterando apenas a
experiência do usuário.

A recomendação é manter a implementação atual e concentrar os esforços
na simplificação da interface e na orquestração automática dos agentes,
tornando a IA a principal interface do produto.
