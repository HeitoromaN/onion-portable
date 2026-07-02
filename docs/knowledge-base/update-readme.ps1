# Script PowerShell para atualizar automaticamente o README da Knowledge Base
# Este script lê todos os arquivos KB e gera o README.md com a estrutura atualizada

param([switch]$Force = $false)

# Caminhos
$scriptPath = $PSScriptRoot
$rootPath = Split-Path -Parent (Split-Path -Parent $scriptPath)
$kbPath = Join-Path $rootPath "docs\knowledge-base"
$readmePath = Join-Path $kbPath "README.md"

# Função para extrair metadados de um arquivo KB
function Get-KBMetadata {
    param([string]$filePath)
    
    if (-not (Test-Path $filePath)) {
        return $null
    }
    
    $content = Get-Content $filePath -Raw -Encoding UTF8
    
    # Extrair título (primeira linha após # KB-XX:)
    if ($content -match "# KB-(\d+):\s+(.+)") {
        $number = $matches[1]
        $title = $matches[2]
    } else {
        return $null
    }
    
    # Extrair descrição (seção Visão Geral)
    if ($content -match "## 1\. Visão Geral\s+(.+?)(?=\n---|\n##)") {
        $description = $matches[1].Trim()
    } else {
        $description = "Descrição não disponível"
    }
    
    # Extrair responsável (cabeçalho de versão)
    if ($content -match "Responsável:\s+`(@\w+)") {
        $responsible = $matches[1]
    } else {
        $responsible = "@docs"
    }
    
    # Extrair versão
    if ($content -match "\*\*Versão:\*\*\s+([\d.]+)") {
        $version = $matches[1]
    } else {
        $version = "1.0"
    }
    
    return @{
        Number = $number
        Title = $title
        Description = $description
        Responsible = $responsible
        Version = $version
        Path = $filePath
        RelativePath = $filePath.Replace($rootPath + "\", "").Replace("\", "/")
    }
}

# Função para ler diretórios e encontrar arquivos KB
function Get-KBFiles {
    param([string]$path)
    
    $kbFiles = @()
    
    # Diretórios para escanear
    $directories = @("core", "technical", "design", "prompts")
    
    foreach ($dir in $directories) {
        $dirPath = Join-Path $path $dir
        if (Test-Path $dirPath) {
            $files = Get-ChildItem -Path $dirPath -Filter "kb-*.md" -File
            foreach ($file in $files) {
                $metadata = Get-KBMetadata -filePath $file.FullName
                if ($metadata) {
                    $metadata.Category = $dir
                    $kbFiles += $metadata
                }
            }
        }
    }
    
    # Ordenar por número do KB
    $kbFiles = $kbFiles | Sort-Object { [int]$_.Number }
    
    return $kbFiles
}

# Função para gerar o conteúdo do README
function Generate-ReadmeContent {
    param([array]$kbFiles, [string]$kbVersion)
    
    $content = @"
# Central de Conhecimento (Knowledge Base) — Pré-Vendas Clear IT

Este diretório armazena a base de conhecimento consolidada sobre o ecossistema de soluções, personas, matrizes e questionários técnicos para otimização da área de pré-vendas da Clear IT.

---

## 📚 Estrutura da Knowledge Base

```
docs/knowledge-base/
├── KB-GUIDE.md                    # Guia de versionamento e boas práticas
├── README.md                      # Este documento - Índice principal (gerado automaticamente)
├── CHANGELOG.md                   # Histórico de alterações
├── core/                          # Conceitos fundamentais
├── technical/                     # Documentação técnica
├── design/                        # Identidade visual e UI
├── prompts/                       # Prompts e system prompts
└── legacy/                        # Documentos legados (histórico)
```

> [!NOTE]
> Este README é gerado automaticamente pelo script `update-readme.ps1`. Não edite manualmente - suas alterações serão sobrescritas. Para atualizar, execute o script ou faça commit (hook automático).

---

## 🗂️ Índice de Artigos (KBs)

### Core (Conceitos Fundamentais)

| Código | Artigo de Conhecimento | Descrição | Responsável | Versão |
| :--- | :--- | :--- | :--- | :--- |
"@

    # Adicionar KBs Core
    $coreKbs = $kbFiles | Where-Object { $_.Category -eq "core" }
    foreach ($kb in $coreKbs) {
        $content += "`n| **[KB-$($kb.Number)]($($kb.RelativePath))** | $($kb.Title) | $($kb.Description) | `$($kb.Responsible) | $($kb.Version) |"
    }
    
    $content += @"

### Technical (Documentação Técnica)

| Código | Artigo de Conhecimento | Descrição | Responsável | Versão |
| :--- | :--- | :--- | :--- | :--- |
"@

    # Adicionar KBs Technical
    $technicalKbs = $kbFiles | Where-Object { $_.Category -eq "technical" }
    foreach ($kb in $technicalKbs) {
        $content += "`n| **[KB-$($kb.Number)]($($kb.RelativePath))** | $($kb.Title) | $($kb.Description) | `$($kb.Responsible) | $($kb.Version) |"
    }
    
    $content += @"

### Design (Identidade Visual e UI)

| Código | Artigo de Conhecimento | Descrição | Responsável | Versão |
| :--- | :--- | :--- | :--- | :--- |
"@

    # Adicionar KBs Design
    $designKbs = $kbFiles | Where-Object { $_.Category -eq "design" }
    foreach ($kb in $designKbs) {
        $content += "`n| **[KB-$($kb.Number)]($($kb.RelativePath))** | $($kb.Title) | $($kb.Description) | `$($kb.Responsible) | $($kb.Version) |"
    }
    
    # Adicionar guia de cores manualmente
    $content += @"

| **[Guia de Paleta de Cores](./design/guia_de_palheta_de_cores.md)** | Paleta de Cores Clear IT | Documentação detalhada da paleta de cores da marca Clear IT. | `@design` | - |
"@

    $content += @"

### Prompts (Prompts e System Prompts)

| Código | Artigo de Conhecimento | Descrição | Responsável | Versão |
| :--- | :--- | :--- | :--- | :--- |
"@

    # Adicionar KBs Prompts
    $promptsKbs = $kbFiles | Where-Object { $_.Category -eq "prompts" }
    foreach ($kb in $promptsKbs) {
        $content += "`n| **[KB-$($kb.Number)]($($kb.RelativePath))** | $($kb.Title) | $($kb.Description) | `$($kb.Responsible) | $($kb.Version) |"
    }
    
    $content += @"

### Legacy (Documentos Legados)

Documentos mantidos para histórico técnico e referência. Não devem ser usados como fonte principal.

"@

    # Listar arquivos legacy
    $legacyPath = Join-Path $kbPath "legacy"
    if (Test-Path $legacyPath) {
        $legacyFiles = Get-ChildItem -Path $legacyPath -Filter "*.md" -File
        foreach ($file in $legacyFiles) {
            $content += "`n- `$($file.Name)"
        }
    }
    
    $content += @"

---

## 📖 Documentação de Suporte

- **[KB-GUIDE.md](./KB-GUIDE.md):** Guia completo de versionamento, boas práticas e manutenção da Knowledge Base
- **[CHANGELOG.md](./CHANGELOG.md):** Histórico detalhado de todas as alterações na KB
- **[update-readme.ps1](./update-readme.ps1):** Script PowerShell para gerar este README automaticamente

---

## 🚀 Como Contribuir

### Processo de Atualização

1. Consulte o **[KB-GUIDE.md](./KB-GUIDE.md)** para entender as diretrizes
2. Identifique a categoria correta (core, technical, design, prompts)
3. Siga o template padrão de estrutura
4. Atualize a versão e o CHANGELOG.md
5. Execute `./update-readme.ps1` para atualizar o README automaticamente
6. Commit suas alterações (o hook pre-commit atualizará o README se necessário)

### Versionamento

Todos os documentos KB seguem versionamento semântico (X.Y.Z):
- **X (Major):** Mudanças estruturais significativas
- **Y (Minor):** Adição de seções, atualizações de conteúdo
- **Z (Patch):** Correções menores, ajustes de formatação

---

## 📝 Convenções

### Estrutura dos Arquivos KB

Todos os documentos KB seguem a estrutura padrão:
1. Visão Geral
2. Conceitos Chave
3. Conteúdo Principal
4. Exemplos Práticos
5. Armadilhas (Gotchas)
6. Referências
7. Cabeçalho de Versão

### Nomenclatura

- **Arquivos KB:** `kb-XX-descricao.md`
- **Arquivos de suporte:** `nome-descritivo.md`
- **Diretórios:** minúsculas, sem espaços

### Metadados Obrigatórios

Para que o script de geração funcione corretamente, cada KB deve conter:
- Título no formato: `# KB-XX: Título do Documento`
- Seção `## 1. Visão Geral` com descrição breve
- Cabeçalho de versão com `Responsável: @persona`

---

## 🔧 Automação

### Git Hook Pre-Commit

Um hook pre-commit é instalado automaticamente para atualizar o README sempre que houver mudanças na knowledge base. Para desativar, use a flag `--no-verify` ao fazer commit:

```bash
git commit --no-verify -m "mensagem"
```

### Geração Manual

Para atualizar o README manualmente:

```powershell
cd docs/knowledge-base
.\update-readme.ps1
```

Para forçar atualização mesmo sem mudanças:

```powershell
.\update-readme.ps1 -Force
```

---

> [!NOTE]
> Para mais detalhes sobre manutenção, versionamento e boas práticas, consulte o **[KB-GUIDE.md](./KB-GUIDE.md)**.

---

**Última Atualização:** $(Get-Date -Format "dd/MM/yyyy HH:mm")  
**Versão da KB:** $kbVersion  
**Gerado por:** update-readme.ps1
"@

    return $content
}

# Verificar se há mudanças na KB
function Has-KBChanges {
    $gitPath = Join-Path $rootPath ".git"
    if (-not (Test-Path $gitPath)) {
        return $true  # Se não for git, sempre atualizar
    }
    
    try {
        $gitOutput = & git -C $rootPath status --porcelain $kbPath 2>&1
        return $gitOutput -ne ""
    } catch {
        return $true  # Se git falhar, atualizar mesmo assim
    }
}

# Main
Write-Host "Escaneando Knowledge Base em: $kbPath" -ForegroundColor Cyan

# Verificar mudanças se não for força
if (-not $Force -and -not (Has-KBChanges)) {
    Write-Host "Nenhuma mudança detectada na Knowledge Base. Use -Force para atualizar mesmo assim." -ForegroundColor Green
    exit 0
}

# Ler arquivos KB
$kbFiles = Get-KBFiles -path $kbPath

if ($kbFiles.Count -eq 0) {
    Write-Host "Nenhum arquivo KB encontrado." -ForegroundColor Yellow
    exit 1
}

Write-Host "Encontrados $($kbFiles.Count) arquivos KB:" -ForegroundColor Green
foreach ($kb in $kbFiles) {
    Write-Host "   - KB-$($kb.Number): $($kb.Title)" -ForegroundColor Gray
}

# Determinar versão da KB (baseado no CHANGELOG)
$changelogPath = Join-Path $kbPath "CHANGELOG.md"
if (Test-Path $changelogPath) {
    if ((Get-Content $changelogPath -Raw) -match "## \[(\d+\.\d+)\]") {
        $kbVersion = $matches[1]
    } else {
        $kbVersion = "2.1"
    }
} else {
    $kbVersion = "2.1"
}

# Gerar conteúdo
Write-Host "Gerando README.md..." -ForegroundColor Cyan
$newContent = Generate-ReadmeContent -kbFiles $kbFiles -kbVersion $kbVersion

# Salvar README
Set-Content -Path $readmePath -Value $newContent -Encoding UTF8

Write-Host "README.md atualizado com sucesso!" -ForegroundColor Green
Write-Host "Total de KBs: $($kbFiles.Count)" -ForegroundColor Gray
Write-Host "Core: $(($kbFiles | Where-Object { $_.Category -eq 'core' }).Count)" -ForegroundColor Gray
Write-Host "Technical: $(($kbFiles | Where-Object { $_.Category -eq 'technical' }).Count)" -ForegroundColor Gray
Write-Host "Design: $(($kbFiles | Where-Object { $_.Category -eq 'design' }).Count)" -ForegroundColor Gray
Write-Host "Prompts: $(($kbFiles | Where-Object { $_.Category -eq 'prompts' }).Count)" -ForegroundColor Gray
