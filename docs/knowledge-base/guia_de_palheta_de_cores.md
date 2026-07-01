# Guia de Identidade Visual e Paleta de Cores — Clear IT

Este documento detalha o sistema de cores e a identidade visual aplicados no ecossistema digital da Clear IT, mapeando as diretrizes de design que sustentam o posicionamento estratégico da marca (Segurança, Clareza, Alta Disponibilidade e Inovação).

---

## 1. Conceito e Direcionamento da Marca

A identidade visual da Clear IT foi desenvolvida para transmitir os pilares centrais de uma operação tecnológica robusta e de alta criticidade:
* **Transparência e Clareza ("Clear"):** Representada por tons luminosos de azul e ciano, simbolizando a visibilidade total gerada pelas soluções de Observabilidade e AIOps.
* **Segurança e Solidez:** Ancorada em uma base de azul-escuro profundo (Navy/Slate), que evoca a confiabilidade e o rigor exigidos por governos e grandes corporações na camada de Cibersegurança.
* **Futuro e Automação:** Detalhes em elementos acentuados e de alto contraste que comunicam agilidade, inteligência artificial e computação em nuvem moderna.

---

## 2. Paleta de Cores Corporativa (Design Tokens)

### 2.1. Cores Primárias (Marca e Autoridade)
Utilizadas nos componentes de maior peso visual, cabeçalhos principais, logotipia e fundos institucionais premium.

* **Azul Tecnológico Profundo (Deep Navy)**
    * **Hex:** `#0F172A` (ou `#0A192F` na variação de alta profundidade)
    * **Aplicação:** Cor base estrutural, fundos de seções hero, menus de navegação principais e tipografia institucional de alta hierarquia.
    * **Psicologia:** Confiança, estabilidade governamental, proteção cibernética e resiliência 24/7.

* **Azul de Destaque Digital (Clear Blue / Cyan)**
    * **Hex:** `#00A3E0` (Variação vibrante: `#00D2FF`)
    * **Aplicação:** Links ativos, botões de ação primária (CTA), ícones de destaque e diferenciação da palavra "IT" ou elementos gráficos complementares do logo.
    * **Psicologia:** Inovação, transparência, nuvem e conectividade fluida.

### 2.2. Cores Secundárias e de Suporte (Fluidez e Contraste)
Complementam a paleta primária para criar profundidade visual e guiar o olhar do usuário através do portfólio.

* **Cinza Slate / Grafite (Muted Slate)**
    * **Hex:** `#334155`
    * **Aplicação:** Subtítulos, bordas de componentes, cards secundários e fundos de blocos de código ou terminais técnicos.
* **Branco Puro / Off-White Dinâmico**
    * **Hex:** `#FFFFFF` / `#F8FAFC`
    * **Aplicação:** Fundo principal da navegação em modo claro (*Light Mode*), áreas de leitura de artigos/insights e contraste de texto sobre o Deep Navy.

### 2.3. Cores Neutras (Tipografia e Superfícies)
Garantem a legibilidade impecável dos extensos conteúdos técnicos e descrições de arquiteturas de referência.

| Nome do Token | Código Hex | Uso Principal |
| :--- | :---: | :--- |
| **Texto Principal (Dark Neutral)** | `#1E293B` | Parágrafos, textos corridos e descrições de propostas. |
| **Texto Secundário (Medium Neutral)** | `#64748B` | Legendas, metadados de artigos e placeholders. |
| **Bordas e Divisores (Light Neutral)** | `#E2E8F0` | Linhas divisórias de seções e contorno de tabelas de preço. |
| **Fundo Alternativo (Superfície Muted)**| `#F1F5F9` | Fundos de tabelas, áreas de cases ou depoimentos. |

---

## 3. Paleta Semântica para Operações Críticas (SOC e COps)

Essenciais para a interface de monitoramento e relatórios do cliente, essas cores seguem diretamente os padrões mundiais de gerenciamento de incidentes e criticidade (SLA/CVSS):

* **Crítico / Alerta Máximo (Prioridade P1 - Red)**
    * **Hex:** `#EF4444`
    * **Significado:** Incidentes de segurança ativos, indisponibilidade sistêmica de borda, vulnerabilidade crítica (CVSS $\ge$ 9.0).
* **Alta Atenção (Prioridade P2 - Orange)**
    * **Hex:** `#F97316`
    * **Significado:** Degradação severa de performance no APM, alertas iminentes de segurança.
* **Média / Preventivo (Prioridade P3 - Yellow)**
    * **Hex:** `#FACC15`
    * **Significado:** Janelas de manutenção ativas, alertas informativos de capacidade de storage excedendo limites iniciais.
* **Sucesso / Operação Normalizada (Green)**
    * **Hex:** `#10B981`
    * **Significado:** Ambientes saudáveis, backups concluídos com sucesso, rotinas de automação executadas com êxito.

---

## 4. Regras de Aplicação na Interface do Usuário (UI)

Para manter o aspecto premium de uma empresa de ponta, o design do site segue três leis de acessibilidade e design:
1.  **Regra do Contraste (WCAG 2.1):** Textos sobre o fundo primário `#0F172A` devem obrigatoriamente utilizar fontes brancas (`#FFFFFF`) ou neutras ultra-claras (`#F8FAFC`), garantindo leitura sem fadiga visual.
2.  **Uso de Gradientes Tecnológicos:** Aplicação sutil de gradientes lineares transitando do *Deep Navy* para o *Clear Blue* (`#0F172A` $\rightarrow$ `#00A3E0`) em banners institucionais e coberturas visuais de inteligência artificial.
3.  **Destaque Cirúrgico:** O Ciano/Azul Claro é restrito a pontos de conversão. Se tudo brilha, nada se destaca. Portanto, botões de contato, agendamentos e chamados no portal utilizam a cor de destaque sobre superfícies neutras.