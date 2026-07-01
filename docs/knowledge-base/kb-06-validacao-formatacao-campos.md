# KB-06 · Validação e Formatação de Campos de Entrada

## 1. Objetivo

Este documento define os padrões de validação, formatação e limitação de caracteres para campos de entrada no sistema Onion Portable, garantindo consistência de dados e conformidade com requisitos legais e comerciais da Clear IT.

## 2. Padrões de Formatação

### 2.1. Documentos Brasileiros

#### CNPJ
- **Formato:** `XX.XXX.XXX/XXXX-XX` (14 dígitos)
- **Validação:** Algoritmo oficial da Receita Federal
- **Máscara de entrada:** Automática durante digitação
- **Exemplo:** `12.345.678/0001-90`
- **Limite de caracteres:** 18 (com pontuação) / 14 (sem pontuação)

```javascript
// Exemplo de validação
function validarCNPJ(cnpj) {
    cnpj = cnpj.replace(/[^\d]/g, '');
    if (cnpj.length !== 14) return false;
    // Implementação do algoritmo oficial
    return true;
}
```

#### CPF
- **Formato:** `XXX.XXX.XXX-XX` (11 dígitos)
- **Validação:** Algoritmo oficial da Receita Federal
- **Máscara de entrada:** Automática durante digitação
- **Exemplo:** `123.456.789-09`
- **Limite de caracteres:** 14 (com pontuação) / 11 (sem pontuação)

```javascript
// Exemplo de validação
function validarCPF(cpf) {
    cpf = cpf.replace(/[^\d]/g, '');
    if (cpf.length !== 11) return false;
    // Implementação do algoritmo oficial
    return true;
}
```

#### Processo SEI (Setor Público)
- **Formato:** `XXXXXX-XXXXXXX` (13 dígitos com hífen)
- **Validação:** Verificação de formato e comprimento
- **Máscara de entrada:** Automática após 6 dígitos
- **Exemplo:** `123456-1234567`
- **Limite de caracteres:** 13

### 2.2. Documentos Comerciais

#### DFD (Documento de Formalização de Demanda)
- **Formato:** Livre, mas padronizado
- **Validação:** Campo obrigatório para setor público
- **Limite de caracteres:** 500 (descrição resumida)
- **Observação:** Pode ser número de protocolo ou código interno

#### Contrato/PO
- **Formato:** Alfanumérico
- **Validação:** Verificação de formato interno
- **Limite de caracteres:** 50
- **Exemplo:** `CTR-2024-001` ou `PO-12345`

### 2.3. Campos de Identificação

#### Nome da Oportunidade
- **Validação:** Campo obrigatório, mínimo 3 caracteres
- **Limite de caracteres:** 100
- **Regras:** Não permitir caracteres especiais excessivos
- **Exemplo:** `Expansão Nutanix Gov` ou `Superterminais Logística`

#### Nome do Contato
- **Validação:** Campo obrigatório
- **Limite de caracteres:** 100
- **Regras:** Permitir letras, espaços e caracteres comuns (á, ç, ã, etc.)
- **Exemplo:** `Carlos Mendes` ou `Fernanda Oliveira`

#### Email
- **Formato:** Padrão RFC 5322
- **Validação:** Verificação de formato e domínio
- **Limite de caracteres:** 254 (máximo RFC)
- **Exemplo:** `carlos.mendes@empresa.com.br`

#### Telefone
- **Formato:** `(XX) XXXXX-XXXX` (celular) ou `(XX) XXXX-XXXX` (fixo)
- **Validação:** Verificação de DDD e número
- **Máscara de entrada:** Automática
- **Limite de caracteres:** 15 (com pontuação)
- **Exemplo:** `(11) 98765-4321`

## 3. Limitação de Caracteres por Tipo de Dado

| Campo | Tipo | Mínimo | Máximo | Obrigatório |
|-------|------|--------|--------|-------------|
| Nome da Oportunidade | Texto | 3 | 100 | Sim |
| Segmento | Select | - | - | Sim |
| Receita | Select | - | - | Sim |
| Expansão | Select | - | - | Sim |
| BDM Responsável | Texto | 2 | 100 | Sim |
| Diretoria Aprovação | Select | - | - | Sim |
| CNPJ | Texto | 14 | 18 | Não (Privado) |
| Processo SEI | Texto | 13 | 13 | Sim (Público) |
| DFD | Texto | 1 | 500 | Sim (Público) |
| Notas Discovery | Textarea | 0 | 2000 | Não |
| Notas Proposta | Textarea | 0 | 2000 | Não |

## 4. Validações em Tempo Real

### 4.1. Feedback Visual
- **Campo válido:** Borda verde, ícone de check
- **Campo inválido:** Borda vermelha, mensagem de erro
- **Campo pendente:** Borda cinza, sem feedback

### 4.2. Mensagens de Erro Padrão

| Erro | Mensagem |
|------|----------|
| Campo obrigatório | "Este campo é obrigatório." |
| CNPJ inválido | "CNPJ inválido. Verifique os dígitos." |
| CPF inválido | "CPF inválido. Verifique os dígitos." |
| Email inválido | "Email inválido. Verifique o formato." |
| Caracteres insuficientes | "Mínimo de X caracteres requerido." |
| Caracteres excedidos | "Máximo de X caracteres permitido." |
| Formato incorreto | "Formato incorreto. Use o padrão XYZ." |

## 5. Implementação Técnica

### 5.1. Máscaras de Entrada
```javascript
// Máscara CNPJ
function maskCNPJ(value) {
    return value.replace(/\D/g, '')
                .replace(/^(\d{2})(\d)/, '$1.$2')
                .replace(/^(\d{2})\.(\d{3})(\d)/, '$1.$2.$3')
                .replace(/\.(\d{3})(\d)/, '.$1/$2')
                .replace(/(\d{4})(\d)/, '$1-$2')
                .slice(0, 18);
}

// Máscara CPF
function maskCPF(value) {
    return value.replace(/\D/g, '')
                .replace(/(\d{3})(\d)/, '$1.$2')
                .replace(/(\d{3})(\d)/, '$1.$2')
                .replace(/(\d{3})(\d{1,2})$/, '$1-$2')
                .slice(0, 14);
}

// Máscara Telefone
function maskPhone(value) {
    return value.replace(/\D/g, '')
                .replace(/^(\d{2})(\d)/g, '($1) $2')
                .replace(/(\d)(\d{4})$/, '$1-$2')
                .slice(0, 15);
}
```

### 5.2. Sanitização de Entrada
```javascript
// Sanitização XSS para campos de texto
function sanitizeInput(input) {
    const div = document.createElement('div');
    div.textContent = input;
    return div.innerHTML;
}

// Remoção de caracteres perigosos
function removeSpecialChars(input, allowedChars = null) {
    if (allowedChars) {
        return input.replace(new RegExp(`[^${allowedChars}]`, 'g'), '');
    }
    return input.replace(/[<>\"'&]/g, '');
}
```

## 6. Regras por Segmento

### 6.1. Setor Público
- **Obrigatórios:** Processo SEI, DFD
- **Opcionais:** CNPJ (não aplicável)
- **Validações específicas:** Verificação de formato SEI

### 6.2. Setor Privado
- **Obrigatórios:** CNPJ (recomendado)
- **Opcionais:** Processo SEI, DFD (não aplicáveis)
- **Validações específicas:** Verificação de CNPJ

## 7. Boas Práticas

1. **Validação progressiva:** Validar campo a campo, não apenas no submit
2. **Feedback imediato:** Mostrar erros assim que o campo perder foco
3. **Máscaras automáticas:** Aplicar máscaras durante digitação
4. **Limpeza de dados:** Remover espaços e caracteres especiais antes de salvar
5. **Mensagens claras:** Usar linguagem simples e direta nas mensagens de erro
6. **Acessibilidade:** Garantir que validadores funcionem com leitores de tela

## 8. Referências

- Receita Federal: Algoritmos de validação de CPF/CNPJ
- RFC 5322: Padrão de formato de email
- ABNT NBR 14534: Formatação de documentos brasileiros
- LGPD: Considerações de privacidade no tratamento de dados pessoais

---

**Versão:** 1.0  
**Data:** 01/07/2026  
**Responsável:** @engineer  
**Status:** Ativo
