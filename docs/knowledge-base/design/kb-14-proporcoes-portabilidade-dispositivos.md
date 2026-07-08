# KB-14: Proporções, Dimensões e Portabilidade de Sites para Múltiplos Dispositivos

---

## 1. Visão Geral
Este documento estabelece as melhores práticas de portabilidade, proporções visuais e design responsivo para o desenvolvimento de sites e aplicações web no ecossistema da Clear IT. O objetivo é garantir que as interfaces ofereçam uma experiência visualmente premium, fluida e consistente em qualquer dispositivo (mobiles, tablets, notebooks, desktops convencionais e telas ultrawide).

**Propósito:** Servir como guia definitivo de engenharia de design responsivo e portabilidade para designers e desenvolvedores front-end, eliminando layouts quebrados e inconsistências de escala.

---

## 2. Conceitos Chave

### 2.1. Design Baseado em Conteúdo (Content-Driven Breakpoints)
A prática de definir limites de layout (breakpoints) com base no comportamento do conteúdo e sua legibilidade, em vez de focar nas especificações físicas de modelos de aparelhos específicos.

### 2.2. Consultas de Contêiner (Container Queries)
A evolução das Media Queries. Permitem que um componente adapte sua estrutura com base nas dimensões do contêiner pai no qual está inserido, promovendo modularidade real e reutilização de componentes em diferentes layouts.

### 2.3. Tipografia e Espaçamento Fluidos
O uso de funções matemáticas do CSS (como `clamp()`, `calc()`, `min()` e `max()`) para dimensionar dinamicamente fontes e espaçamentos (paddings e margins) de forma contínua, sem saltos bruscos entre breakpoints.

### 2.4. Sistema de Espaçamento 8pt (8pt Grid System)
Metodologia que utiliza múltiplos de 8 (8px, 16px, 24px, 32px, etc.) para definir tamanhos de componentes, margens e preenchimentos, gerando consistência geométrica e ritmo visual.

### 2.5. Proporção Áurea (Golden Ratio - 1:1.618)
Proporção matemática usada para criar relações harmoniosas de tamanho entre elementos adjacentes, blocos de conteúdo e escalas tipográficas.

---

## 3. Diretrizes de Dimensões e Breakpoints

### 3.1. Breakpoints Recomendados para 2026/2027
Embora o design deva ser fluído e orientado ao conteúdo, estabelecemos os seguintes limites de referência (min-width base) para o alinhamento de componentes principais de página:

| Categoria | Resolução (Largura) | Estratégia de Layout |
| :--- | :--- | :--- |
| **Mobile Portrait** | `< 480px` | Coluna única, navegação colapsada (hambúrguer/bottom bar), margens de 16px. |
| **Mobile Landscape / Small Tablet** | `480px - 767px` | Transição para grades flexíveis de 2 colunas, elementos de mídia redimensionados. |
| **Tablet Portrait** | `768px - 1023px` | Menu lateral ocultável, layouts com 2 a 3 colunas de conteúdo. |
| **Tablet Landscape / Small Laptop** | `1024px - 1279px` | Navegação principal visível, grades de até 4 colunas. |
| **Desktop Padrão (Full HD)** | `1280px - 1535px` | Layout centralizado com contêiner fixo máximo (`max-width: 1200px`). |
| **Large Desktop / Ultrawide** | `≥ 1536px` | Contêiner máximo travado entre `1440px` e `1600px` para evitar linhas de leitura muito longas. |

### 3.2. Abordagem Mobile-First
*   **Implementação:** Comece escrevendo os estilos base sem nenhuma media query (focado no mobile) e use `min-width` para adicionar regras complexas à medida que a tela aumenta.
*   **Vantagens:** Reduz o tamanho do CSS, melhora a performance de renderização no mobile (Core Web Vitals) e simplifica o debug de layout.

---

## 4. Metodologias Modernas de Proporção e Escala

### 4.1. Tipografia Fluida com `clamp()`
Evite alterar tamanhos de fonte de forma discreta usando dezenas de media queries. Use `clamp()` para definir transições perfeitamente fluídas:
```css
/* Sintaxe: clamp(VALOR_MÍNIMO, VALOR_FLUIDO, VALOR_MÁXIMO) */
h1 {
  font-size: clamp(1.8rem, 4vw + 1rem, 3.2rem);
}
p {
  font-size: clamp(1rem, 1.5vw + 0.2rem, 1.25rem);
}
```

### 4.2. Layouts Autônomos com Container Queries (`@container`)
Sempre que construir componentes reaproveitáveis (cards, blocos de chat, painéis de controle), condicione o layout ao tamanho do componente pai:
```css
/* Definindo o elemento pai como contêiner de tamanho */
.card-wrapper {
  container-type: inline-size;
}

/* O componente se adapta ao espaço disponível para ele, não à tela */
@container (min-width: 400px) {
  .card-layout {
    display: flex;
    flex-direction: row;
    gap: 16px;
  }
}
```

### 4.3. Proporção de Imagens e Mídias com `aspect-ratio`
Para evitar problemas de Cumulative Layout Shift (CLS), utilize a propriedade nativa `aspect-ratio` junto a imagens responsivas:
```css
.card-thumbnail {
  width: 100%;
  aspect-ratio: 16 / 9;
  object-fit: cover;
}
```

### 4.4. A Regra do 8pt e a Proporção Áurea
*   **Espaçamento Visual:** Margens, preenchimentos (paddings) e gaps de layouts Grid/Flexbox devem respeitar múltiplos de 8px (ou 4px para elementos densos e micro-espaçamentos).
*   **Relação de Layouts (Main/Sidebar):** Para layouts clássicos de duas colunas, utilize a aproximação da proporção áurea (aprox. 62% para a coluna de conteúdo principal e 38% para a barra lateral):
    ```css
    .layout-grid {
      display: grid;
      grid-template-columns: 1.618fr 1fr; /* Próximo à Proporção Áurea */
      gap: 32px;
    }
    ```

---

## 5. Armadilhas (Gotchas)

> [!CAUTION]
> **Erros Críticos de Portabilidade e Responsividade:**
> *   **Larguras Fixas (`width` em `px`):** Nunca fixe a largura de contêineres principais em pixels (ex: `width: 960px`). Utilize `width: 100%` com `max-width` adequado.
> *   **Falta de Viewport Meta Tag:** Não esquecer de declarar `<meta name="viewport" content="width=device-width, initial-scale=1.0">` no cabeçalho do HTML, caso contrário o navegador mobile emulará a resolução de desktop.
> *   **Textos Longos em Contêineres Estreitos:** Falta de tratamento para quebras de palavra (`word-break: break-word` ou `hyphens: auto`) causa estouros horizontais de layout.
> *   **Linhas de Texto Muito Longas no Desktop:** Apresentar parágrafos sem limite de largura máxima em telas grandes. A largura máxima de um bloco de texto legível deve ser de, no máximo, 70 a 80 caracteres (geralmente entre `60ch` e `75ch` de largura).
> *   **Substituição de Imagens Não-Otimizadas:** Usar imagens pesadas de desktop em dispositivos móveis. Utilize a tag `<picture>` e formatos modernos (AVIF/WebP) para carregar dimensões adequadas a cada tela.

---

## 6. Referências

- **KB-09:** Boas Práticas de Esquema de Cores e Organização para Sites
- **KB-11:** Estruturação de Sites e Hierarquia Visual
- **W3C Web Design Standards:** Responsive Design and Mobile-First Best Practices
- **Smashing Magazine:** Modern Responsive Layouts & Container Queries Guide (2026 Edition)

---

**Versão:** 1.0  
**Data:** 08/07/2026  
**Status:** Produção  
**Responsável:** @design
