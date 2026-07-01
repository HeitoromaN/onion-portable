# KB-09: Boas Práticas de Esquema de Cores e Organização para Sites

Este documento detalha as melhores práticas para implementação de esquemas de cores, organização de design tokens e alternância entre modo claro e modo noturno (dark mode) em interfaces web.

---

## 1. Fundamentos de Esquema de Cores

### 1.1. Princípios Básicos

**Contraste e Acessibilidade**
- Seguir WCAG 2.1: contraste mínimo de 4.5:1 para texto normal, 3:1 para texto grande
- Testar com ferramentas como WebAIM Contrast Checker
- Considerar daltonismo (protanopia, deuteranopia, tritanopia)

**Hierarquia Visual**
- Usar cor para guiar o olhar do usuário, não apenas decorativamente
- Máximo de 3-4 cores principais para evitar sobrecarga visual
- Cores secundárias devem complementar, não competir

**Consistência**
- Manter significado semântico das cores (verde = sucesso, vermelho = erro)
- Evitar reutilizar a mesma cor para propósitos diferentes
- Documentar significado de cada cor no design system

---

## 2. Organização de Design Tokens

### 2.1. Estrutura de Nomenclatura

**Padrão Sugerido:**
```
--{categoria}-{subcategoria}-{variante}-{estado}
```

**Exemplos:**
```css
--color-primary-500
--color-primary-500-hover
--color-text-primary
--color-text-secondary
--color-bg-surface
--color-bg-surface-hover
--border-color-default
--border-color-focus
```

### 2.2. Categorias de Tokens

**Cores de Marca (Brand Colors)**
```css
--brand-primary: #00A3E0;
--brand-primary-light: #00D2FF;
--brand-primary-dark: #0077A3;
--brand-secondary: #F97316;
```

**Cores Neutras (Neutral Colors)**
```css
--neutral-50: #F8FAFC;
--neutral-100: #F1F5F9;
--neutral-200: #E2E8F0;
--neutral-300: #CBD5E1;
--neutral-400: #94A3B8;
--neutral-500: #64748B;
--neutral-600: #475569;
--neutral-700: #334155;
--neutral-800: #1E293B;
--neutral-900: #0F172A;
```

**Cores Semânticas (Semantic Colors)**
```css
--color-success: #10B981;
--color-warning: #FACC15;
--color-error: #EF4444;
--color-info: #3B82F6;
```

**Cores de Superfície (Surface Colors)**
```css
--surface-primary: #FFFFFF;
--surface-secondary: #F8FAFC;
--surface-tertiary: #F1F5F9;
--surface-elevated: #FFFFFF;
```

---

## 3. Modo Claro vs. Modo Noturno (Dark Mode)

### 3.1. Estratégias de Implementação

**Estratégia 1: CSS Variables com Media Query**
```css
:root {
  --bg-primary: #FFFFFF;
  --text-primary: #1E293B;
}

@media (prefers-color-scheme: dark) {
  :root {
    --bg-primary: #0F172A;
    --text-primary: #F8FAFC;
  }
}
```

**Estratégia 2: Toggle Manual com Classe**
```css
:root {
  --bg-primary: #FFFFFF;
  --text-primary: #1E293B;
}

[data-theme="dark"] {
  --bg-primary: #0F172A;
  --text-primary: #F8FAFC;
}
```

**Estratégia 3: Híbrida (Preferência + Toggle)**
```css
:root {
  --bg-primary: #FFFFFF;
  --text-primary: #1E293B;
}

@media (prefers-color-scheme: dark) {
  :root {
    --bg-primary: #0F172A;
    --text-primary: #F8FAFC;
  }
}

[data-theme="light"] {
  --bg-primary: #FFFFFF;
  --text-primary: #1E293B;
}

[data-theme="dark"] {
  --bg-primary: #0F172A;
  --text-primary: #F8FAFC;
}
```

### 3.2. Mapeamento de Cores entre Modos

**Regra de Ouro: Não apenas inverter cores**

**Modo Claro → Modo Noturno:**
```css
/* Backgrounds */
--bg-primary: #FFFFFF → #0F172A
--bg-secondary: #F8FAFC → #1E293B
--bg-tertiary: #F1F5F9 → #334155

/* Text */
--text-primary: #1E293B → #F8FAFC
--text-secondary: #64748B → #94A3B8
--text-tertiary: #94A3B8 → #64748B

/* Borders */
--border-color: #E2E8F0 → #334155
--border-color-hover: #CBD5E1 → #475569

/* Surfaces */
--surface-elevated: #FFFFFF → #1E293B
--surface-overlay: rgba(0,0,0,0.5) → rgba(0,0,0,0.8)
```

### 3.3. Ajustes Específicos para Dark Mode

**Reduzir Saturação**
```css
/* Dark mode usa cores menos saturadas */
--brand-primary: #00A3E0 → #00A3E0 (mantém, mas reduz opacidade em overlays)
--brand-secondary: #F97316 → #FB923C (ajusta para melhor contraste)
```

**Aumentar Espaçamento**
```css
/* Dark mode pode parecer mais "apertado", aumentar padding */
--spacing-sm: 0.5rem → 0.75rem;
--spacing-md: 1rem → 1.25rem;
```

**Ajustar Sombras**
```css
/* Sombras em dark mode devem ser mais sutis */
--shadow-sm: 0 1px 2px rgba(0,0,0,0.05) → 0 1px 2px rgba(0,0,0,0.3);
--shadow-md: 0 4px 6px rgba(0,0,0,0.1) → 0 4px 6px rgba(0,0,0,0.5);
```

---

## 4. Boas Práticas de Implementação

### 4.1. CSS Variables vs. Hardcoded Values

**✅ CORRETO:**
```css
.button {
  background: var(--brand-primary);
  color: var(--text-primary);
  border: 1px solid var(--border-color);
}
```

**❌ INCORRETO:**
```css
.button {
  background: #00A3E0;
  color: #1E293B;
  border: 1px solid #E2E8F0;
}
```

### 4.2. Organização de Arquivos

**Estrutura Sugerida:**
```
styles/
├── tokens/
│   ├── colors.css
│   ├── spacing.css
│   ├── typography.css
│   └── shadows.css
├── themes/
│   ├── light.css
│   └── dark.css
└── components/
    ├── button.css
    ├── card.css
    └── input.css
```

### 4.3. Transições Suaves

**Implementar transições para mudança de tema:**
```css
* {
  transition: background-color 0.3s ease, color 0.3s ease, border-color 0.3s ease;
}
```

### 4.4. Persistência de Preferência

**JavaScript para salvar preferência:**
```javascript
// Salvar preferência
localStorage.setItem('theme', 'dark');

// Carregar preferência
const savedTheme = localStorage.getItem('theme') || 'light';
document.documentElement.setAttribute('data-theme', savedTheme);

// Detectar preferência do sistema
const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
if (!localStorage.getItem('theme')) {
  document.documentElement.setAttribute('data-theme', prefersDark ? 'dark' : 'light');
}
```

---

## 5. Padrões de Cores por Categoria

### 5.1. Cores de Ação (Action Colors)

**Primárias (CTA Principal)**
```css
--action-primary: #00A3E0;
--action-primary-hover: #00D2FF;
--action-primary-active: #0077A3;
```

**Secundárias (CTA Secundário)**
```css
--action-secondary: #64748B;
--action-secondary-hover: #94A3B8;
--action-secondary-active: #475569;
```

**Destrutivas (Ações de Exclusão)**
```css
--action-destructive: #EF4444;
--action-destructive-hover: #F87171;
--action-destructive-active: #DC2626;
```

### 5.2. Cores de Estado (State Colors)

**Sucesso**
```css
--state-success: #10B981;
--state-success-bg: rgba(16,185,129,0.1);
--state-success-border: rgba(16,185,129,0.2);
```

**Aviso**
```css
--state-warning: #FACC15;
--state-warning-bg: rgba(250,204,21,0.1);
--state-warning-border: rgba(250,204,21,0.2);
```

**Erro**
```css
--state-error: #EF4444;
--state-error-bg: rgba(239,68,68,0.1);
--state-error-border: rgba(239,68,68,0.2);
```

**Info**
```css
--state-info: #3B82F6;
--state-info-bg: rgba(59,130,246,0.1);
--state-info-border: rgba(59,130,246,0.2);
```

---

## 6. Ferramentas e Recursos

### 6.1. Ferramentas de Cores

- **Coolors.co:** Gerador de paletas de cores
- **Adobe Color:** Criação e exploração de paletas
- **Contrast Checker:** WebAIM Contrast Checker
- **Paletton:** Exploração de relações de cores
- **Chroma.js:** Biblioteca JavaScript para manipulação de cores

### 6.2. Bibliotecas CSS

- **CSS Variables:** Nativo, sem dependências
- **Sass/SCSS:** Pré-processador com variáveis e mixins
- **Tailwind CSS:** Framework utility-first com dark mode built-in
- **Styled Components:** CSS-in-JS com theming

---

## 7. Exemplo Completo de Implementação

### 7.1. CSS Variables (tokens/colors.css) - Implementação Onion Portable
```css
:root {
  /* Brand Colors - Clear IT */
  --primary:     #00A3E0;
  --primary-light:#00D2FF;
  --primary-dark: #0077A3;
  --primary-dim: rgba(0,163,224,0.12);
  --primary-glow: rgba(0,163,224,0.20);

  /* Neutral Colors - Dark Mode (Default) */
  --bg:          #0F172A;
  --bg-panel:    #0A192F;
  --bg-card:     #1E293B;
  --bg-input:    #334155;
  --border:      #E2E8F0;
  --border-hover:#00A3E0;

  --white:       #FFFFFF;
  --off-white:   #F8FAFC;
  --gray-100:    #F1F5F9;
  --gray-200:    #E2E8F0;
  --gray-300:    #CBD5E1;
  --gray-400:    #94A3B8;
  --gray-500:    #64748B;
  --gray-600:    #475569;
  --gray-700:    #334155;
  --gray-800:    #1E293B;
  --gray-900:    #0F172A;

  /* Semantic Colors */
  --green:       #10B981;
  --green-dim:   rgba(16,185,129,0.12);
  --amber:       #FACC15;
  --amber-dim:   rgba(250,204,21,0.12);
  --orange:      #F97316;
  --orange-dim:  rgba(249,115,22,0.12);
  --red:         #EF4444;
  --red-dim:     rgba(239,68,68,0.12);
  --blue:        #00A3E0;
  --blue-dim:    rgba(0,163,224,0.12);

  /* Transitions */
  --transition:  all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
  --transition-fast: all 0.15s cubic-bezier(0.4, 0, 0.2, 1);
}

/* Light Mode Theme */
[data-theme="light"] {
  --bg:          #FFFFFF;
  --bg-panel:    #F8FAFC;
  --bg-card:     #FFFFFF;
  --bg-input:    #F1F5F9;
  --border:      #E2E8F0;
  --border-hover:#00A3E0;

  --white:       #1E293B;
  --off-white:   #334155;
  --gray-100:    #F8FAFC;
  --gray-200:    #E2E8F0;
  --gray-300:    #CBD5E1;
  --gray-400:    #94A3B8;
  --gray-500:    #64748B;
  --gray-600:    #475569;
  --gray-700:    #334155;
  --gray-800:    #1E293B;
  --gray-900:    #0F172A;
}

/* Dark Mode Theme (Explicit) */
[data-theme="dark"] {
  --bg:          #0F172A;
  --bg-panel:    #0A192F;
  --bg-card:     #1E293B;
  --bg-input:    #334155;
  --border:      #334155;
  --border-hover:#00A3E0;

  --white:       #FFFFFF;
  --off-white:   #F8FAFC;
  --gray-100:    #F1F5F9;
  --gray-200:    #E2E8F0;
  --gray-300:    #CBD5E1;
  --gray-400:    #94A3B8;
  --gray-500:    #64748B;
  --gray-600:    #475569;
  --gray-700:    #334155;
  --gray-800:    #1E293B;
  --gray-900:    #0F172A;
}

/* System preference detection */
@media (prefers-color-scheme: light) {
  :root:not([data-theme]) {
    --bg:          #FFFFFF;
    --bg-panel:    #F8FAFC;
    --bg-card:     #FFFFFF;
    --bg-input:    #F1F5F9;
    --border:      #E2E8F0;
    --border-hover:#00A3E0;

    --white:       #1E293B;
    --off-white:   #334155;
    --gray-100:    #F8FAFC;
    --gray-200:    #E2E8F0;
    --gray-300:    #CBD5E1;
    --gray-400:    #94A3B8;
    --gray-500:    #64748B;
    --gray-600:    #475569;
    --gray-700:    #334155;
    --gray-800:    #1E293B;
    --gray-900:    #0F172A;
  }
}
```

### 7.2. JavaScript (theme-toggle.js) - Implementação Onion Portable
```javascript
function toggleTheme() {
  const currentTheme = document.documentElement.getAttribute('data-theme');
  const newTheme = currentTheme === 'dark' ? 'light' : 'dark';
  
  document.documentElement.setAttribute('data-theme', newTheme);
  localStorage.setItem('theme', newTheme);
  
  // Update icon
  updateThemeIcon(newTheme);
}

function initTheme() {
  const savedTheme = localStorage.getItem('theme');
  const prefersDark = window.matchMedia('(prefers-color-scheme: dark)').matches;
  
  let theme = savedTheme;
  if (!theme) {
    theme = prefersDark ? 'dark' : 'light';
  }
  
  document.documentElement.setAttribute('data-theme', theme);
  updateThemeIcon(theme);
}

function updateThemeIcon(theme) {
  const icon = document.getElementById('theme-icon');
  if (theme === 'dark') {
    // Moon icon for dark mode
    icon.innerHTML = `
      <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
    `;
  } else {
    // Sun icon for light mode
    icon.innerHTML = `
      <circle cx="12" cy="12" r="5"></circle>
      <line x1="12" y1="1" x2="12" y2="3"></line>
      <line x1="12" y1="21" x2="12" y2="23"></line>
      <line x1="4.22" y1="4.22" x2="5.64" y2="5.64"></line>
      <line x1="18.36" y1="18.36" x2="19.78" y2="19.78"></line>
      <line x1="1" y1="12" x2="3" y2="12"></line>
      <line x1="21" y1="12" x2="23" y2="12"></line>
      <line x1="4.22" y1="19.78" x2="5.64" y2="18.36"></line>
      <line x1="18.36" y1="5.64" x2="19.78" y2="4.22"></line>
    `;
  }
}

// Listen for system preference changes
window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', e => {
  if (!localStorage.getItem('theme')) {
    const theme = e.matches ? 'dark' : 'light';
    document.documentElement.setAttribute('data-theme', theme);
    updateThemeIcon(theme);
  }
});

// Inicializar
initTheme();
```

---

## 8. Checklist de Implementação

### 8.1. Planejamento
- [ ] Definir paleta de cores da marca
- [ ] Criar escala de cores neutras (50-900)
- [ ] Definir cores semânticas (sucesso, aviso, erro, info)
- [ ] Documentar significado de cada cor
- [ ] Testar contraste e acessibilidade

### 8.2. Implementação
- [ ] Criar CSS variables para todas as cores
- [ ] Implementar media query para prefers-color-scheme
- [ ] Adicionar toggle manual de tema
- [ ] Implementar persistência de preferência
- [ ] Adicionar transições suaves

### 8.3. Testes
- [ ] Testar em ambos os modos (claro/escuro)
- [ ] Verificar contraste em todos os elementos
- [ ] Testar com ferramentas de acessibilidade
- [ ] Validar em diferentes navegadores
- [ ] Testar com daltonismo

---

## 9. Erros Comuns e Como Evitar

### 9.1. Erro: Inversão Simples de Cores

**Problema:**
```css
[data-theme="dark"] {
  --bg-primary: #000000; /* Preto puro */
  --text-primary: #FFFFFF; /* Branco puro */
}
```

**Solução:**
```css
[data-theme="dark"] {
  --bg-primary: #0F172A; /* Navy profundo, não preto puro */
  --text-primary: #F8FAFC; /* Off-white, não branco puro */
}
```

### 9.2. Erro: Cores Hardcoded

**Problema:**
```css
.card {
  background: #FFFFFF;
}
```

**Solução:**
```css
.card {
  background: var(--bg-primary);
}
```

### 9.3. Erro: Sem Transições

**Problema:**
```css
/* Sem transições, mudança abrupta */
```

**Solução:**
```css
* {
  transition: background-color 0.3s ease, color 0.3s ease;
}
```

---

## 10. Referências e Recursos Adicionais

### 10.1. Documentação Oficial
- **WCAG 2.1:** https://www.w3.org/WAI/WCAG21/quickref/
- **CSS Custom Properties:** https://developer.mozilla.org/en-US/docs/Web/CSS/Using_CSS_custom_properties
- **prefers-color-scheme:** https://developer.mozilla.org/en-US/docs/Web/CSS/@media/prefers-color-scheme

### 10.2. Artigos e Guias
- **Dark Mode Best Practices:** https://www.smashingmagazine.com/2020/04/designing-dark-mode/
- **Color Systems:** https://www.designsystems.com/color-systems/
- **Design Tokens:** https://www.designsystems.com/design-tokens/

### 10.3. Ferramentas
- **WebAIM Contrast Checker:** https://webaim.org/resources/contrastchecker/
- **Color Oracle:** Simulador de daltonismo
- **CSS Variables Inspector:** Extensão do Chrome para debug

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Status:** Produção  
**Baseado em:** Guia de Identidade Visual Clear IT, WCAG 2.1, Melhores Práticas da Indústria
