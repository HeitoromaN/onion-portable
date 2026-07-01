# KB-11: Estruturação de Sites e Hierarquia Visual

---

## 1. Visão Geral

Este documento estabelece as diretrizes para estruturação de sites, hierarquia visual, clareza de informações e técnicas de atenção visual utilizadas nos projetos da Clear IT. O objetivo é garantir que os sites sejam intuitivos, acessíveis e eficazes na comunicação da proposta de valor.

---

## 2. Conceitos Chave

### 2.1. Hierarquia Visual

A hierarquia visual é o arranjo e apresentação de elementos de forma que implique importância. Ela guia o olhar do usuário através da página de forma lógica e intencional.

**Elementos de Hierarquia:**
- **Tamanho:** Elementos maiores chamam mais atenção
- **Cor:** Cores contrastantes destacam elementos importantes
- **Posição:** Elementos no topo e à esquerda são notados primeiro
- **Espaçamento:** Espaço em branco cria separação e foco
- **Tipografia:** Peso, tamanho e estilo de fonte indicam importância

### 2.2. Estrutura de Informação

A organização lógica do conteúdo facilita a compreensão e navegação.

**Princípios:**
- **Pirâmide Invertida:** Informação mais importante primeiro
- **Chunking:** Dividir conteúdo em blocos digeríveis
- **Scanning:** Facilitar leitura rápida com headings e bullets
- **Progressive Disclosure:** Revelar informações conforme necessário

### 2.3. Atenção Visual

Técnicas para direcionar e manter a atenção do usuário onde desejado.

**Técnicas:**
- **F Pattern:** Padrão de leitura natural (esquerda → direita, topo → fundo)
- **Z Pattern:** Alternância entre esquerda e direita em landing pages
- **Contraste:** Diferenciação visual para destacar CTAs
- **Animação Sutil:** Movimento para chamar atenção sem distrair

---

## 3. Estrutura de Páginas

### 3.1. Above the Fold (Primeira Tela)

A área visível sem scroll deve conter os elementos mais críticos.

**Elementos Obrigatórios:**
- **Header/Navigation:** Logo e menu principal
- **Hero Section:** Proposta de valor clara e CTA principal
- **Value Proposition:** Benefício principal em 1-2 frases
- **Primary CTA:** Ação desejada mais importante

**Boas Práticas:**
- Manter hero section focada e sem distrações
- Usar imagens de alta qualidade relevantes ao contexto
- Limitar a 1-2 CTAs principais acima do fold
- Garantir responsividade em mobile

### 3.2. Seções Principais

**Hero Section**
- Headline impactante (H1)
- Subheadline explicativa (H2)
- CTA principal com contraste
- Imagem/vídeo de contexto

**Features/Benefícios**
- Grid de 3-6 features
- Ícones consistentes
- Títulos curtos e descritivos
- Descrições concisas

**Social Proof**
- Logos de clientes
- Testemunhos
- Estatísticas/métricas
- Cases de sucesso

**CTA Section**
- Proposta de valor reforçada
- CTA secundário
- Redução de fricção (formulário simples)

**Footer**
- Links de navegação
- Informações de contato
- Redes sociais
- Legal/políticas

### 3.3. Padrões de Layout

**Landing Page (Z Pattern)**
```
[Header]
[Hero - Imagem Esquerda | Texto Direita]
[Features - 3 Colunas]
[Testimonials - 2 Colunas]
[CTA Section]
[Footer]
```

**Blog/Artigo (F Pattern)**
```
[Header]
[Title + Meta]
[Content - Coluna Única]
[Sidebar - Related Posts]
[Footer]
```

**Dashboard (Grid)**
```
[Header]
[Navigation Lateral]
[Main Content - Cards Grid]
[Footer]
```

---

## 4. Clareza de Informação

### 4.1. Tipografia

**Hierarquia de Fontes:**
- **H1:** 32-48px, peso 700-800, usado uma vez por página
- **H2:** 24-32px, peso 600-700, seções principais
- **H3:** 18-24px, peso 500-600, subseções
- **Body:** 16-18px, peso 400-500, texto corrido
- **Caption:** 12-14px, peso 400, labels e auxiliares

**Regras:**
- Máximo de 3 famílias de fonte por página
- Line-height 1.5-1.6 para body text
- Parágrafos máximos de 3-4 linhas
- Usar negrito para ênfase, não itálico

### 4.2. Cores e Contraste

**Paleta Funcional:**
- **Primária:** CTA principal, elementos ativos
- **Secundária:** CTA secundário, elementos complementares
- **Neutras:** Texto, backgrounds, bordas
- **Semânticas:** Sucesso, erro, aviso, informação

**Contraste:**
- Mínimo 4.5:1 para texto normal (WCAG AA)
- Mínimo 3:1 para texto grande (>18px)
- Testar em diferentes condições de luz
- Considerar daltonismo (protanopia, deuteranopia)

### 4.3. Espaçamento

**Sistema de Grid:**
- Base: 8px (1 unidade)
- Pequeno: 8px, 16px
- Médio: 24px, 32px
- Grande: 48px, 64px
- Extra: 96px, 128px

**Aplicação:**
- Margens consistentes entre seções
- Padding interno de cards e containers
- Espaço entre elementos relacionados
- Espaço maior entre elementos não relacionados

---

## 5. Técnicas de Atenção

### 5.1. Direcionamento Visual

**Linhas de Fuga:**
- Usar imagens com linhas que apontam para CTAs
- Posicionar elementos para guiar o olhar
- Criar caminhos visuais claros

**Foco e Contraste:**
- Destacar CTAs com cor contrastante
- Usar sombras para profundidade
- Aplicar hover states com feedback visual

### 5.2. Microinterações

**Feedback Visual:**
- Hover: mudança de cor/sombra
- Active: leve depressão visual
- Focus: outline visível para acessibilidade
- Loading: spinner ou skeleton

**Animações:**
- Duração: 200-300ms para microinterações
- Easing: ease-out para naturalidade
- Performance: usar transform/opacity, não layout
- Respect: respeitar prefers-reduced-motion

### 5.3. Padrões de Leitura

**F Pattern (Conteúdo Textual):**
```
[Header]
┌─────────────────────┐
│ Título Principal    │ ← Foco inicial
├─────────────────────┤
│ Primeiro parágrafo  │ ← Leitura completa
│ Segundo parágrafo   │ ← Scanning
│ Terceiro parágrafo  │ ← Scanning
└─────────────────────┘
```

**Z Pattern (Landing Pages):**
```
[Header]
┌─────────────────────┐
│ [Logo]    [Menu]    │ ← Topo esquerda → direita
├─────────────────────┤
│ [Imagem] [Texto]    │ ← Esquerda → direita
├─────────────────────┤
│ [Feature] [Feature]  │ ← Direita → esquerda
└─────────────────────┘
```

---

## 6. Acessibilidade

### 6.1. Navegação por Teclado

- Tab order lógico e sequencial
- Focus indicators visíveis
- Skip links para navegação rápida
- Atalhos de teclado documentados

### 6.2. Leitores de Tela

- Alt text descritivo para imagens
- Headings hierárquicos (H1 → H2 → H3)
- ARIA labels para elementos interativos
- Texto alternativo para ícones

### 6.3. Responsividade

- Breakpoints: Mobile (<768px), Tablet (768-1024px), Desktop (>1024px)
- Touch targets mínimos de 44x44px
- Texto legível sem zoom em mobile
- Layout adaptável sem scroll horizontal

---

## 7. Exemplos Práticos

### 7.1. Hero Section Bem Estruturada

```html
<section class="hero">
  <div class="container">
    <div class="hero-content">
      <h1 class="hero-title">
        Transforme sua infraestrutura com soluções cloud-native
      </h1>
      <p class="hero-subtitle">
        Migração segura, escalável e eficiente para empresas que buscam inovação
      </p>
      <div class="hero-ctas">
        <button class="btn btn-primary">
          Solicitar Consultoria
        </button>
        <button class="btn btn-secondary">
          Ver Cases
        </button>
      </div>
    </div>
    <div class="hero-visual">
      <img src="hero-image.jpg" alt="Dashboard de infraestrutura cloud">
    </div>
  </div>
</section>
```

### 7.2. Grid de Features com Hierarquia

```html
<section class="features">
  <div class="container">
    <h2 class="section-title">Nossas Soluções</h2>
    <div class="features-grid">
      <div class="feature-card">
        <div class="feature-icon">
          <svg>...</svg>
        </div>
        <h3 class="feature-title">Observabilidade</h3>
        <p class="feature-desc">
          Monitoramento 24/7 com alertas inteligentes e dashboards em tempo real
        </p>
      </div>
      <!-- Repetir para outras features -->
    </div>
  </div>
</section>
```

### 7.3. CTA com Contraste e Foco

```css
.cta-button {
  background: var(--primary-color);
  color: white;
  padding: 16px 32px;
  font-weight: 600;
  border-radius: 8px;
  transition: all 0.2s ease-out;
}

.cta-button:hover {
  background: var(--primary-dark);
  transform: translateY(-2px);
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
}

.cta-button:focus {
  outline: 3px solid var(--focus-color);
  outline-offset: 2px;
}
```

---

## 8. Armadilhas (Gotchas)

> [!CAUTION]
> **Erros Comuns em Estruturação de Sites:**
> * Sobrecarregar o above the fold com muitas CTAs e informações
> * Usar fontes muito pequenas ou com contraste insuficiente
> * Ignorar responsividade e testar apenas em desktop
> * Criar hierarquia visual inconsistente entre páginas
> * Usar animações excessivas que distraem do conteúdo principal
> * Não testar acessibilidade com leitores de tela
> * Ignorar padrões de leitura naturais (F/Z pattern)

> [!NOTE]
> **Boas Práticas:**
> * Testar layout com usuários reais antes do lançamento
> * Usar ferramentas de heatmap para validar padrões de atenção
> * Validar contraste com ferramentas como WebAIM Contrast Checker
> * Testar em diferentes dispositivos e tamanhos de tela
> * Considerar contexto de uso (mobile vs desktop)

---

## 9. Referências

- **KB-08:** Identidade IA (para consistência de marca)
- **KB-09:** Boas Práticas de Cores e Temas (para paleta e contraste)
- **KB-06:** Validação e Formatação de Campos (para formulários)
- **WCAG 2.1:** Web Content Accessibility Guidelines
- **Nielsen Norman Group:** Pesquisas sobre UX e padrões de leitura
- **Material Design:** Sistema de design do Google

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Status:** Produção  
**Atualizações:** Documento inicial com diretrizes de estruturação, hierarquia visual e técnicas de atenção
