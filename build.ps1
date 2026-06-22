# Regenerate Sameer_Asif_Resume.pdf, .docx, and .txt from RESUME.md
# Usage: powershell -ExecutionPolicy Bypass -File build.ps1

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $here

# --- locate tools ---
$pandoc = $null
foreach ($p in @(
    "C:\Users\$env:USERNAME\AppData\Local\Pandoc\pandoc.exe",
    "C:\Program Files\Pandoc\pandoc.exe"
)) { if (Test-Path $p) { $pandoc = $p; break } }
if (-not $pandoc) { $cmd = Get-Command pandoc.exe -ErrorAction SilentlyContinue; if ($cmd) { $pandoc = $cmd.Source } }
if (-not $pandoc) { throw "pandoc.exe not found. Install: winget install --id JohnMacFarlane.Pandoc -e" }

$wkhtml = $null
foreach ($p in @(
    "C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe",
    "C:\Program Files (x86)\wkhtmltopdf\bin\wkhtmltopdf.exe"
)) { if (Test-Path $p) { $wkhtml = $p; break } }
if (-not $wkhtml) { $cmd = Get-Command wkhtmltopdf.exe -ErrorAction SilentlyContinue; if ($cmd) { $wkhtml = $cmd.Source } }
if (-not $wkhtml) { throw "wkhtmltopdf.exe not found. Install: winget install --id wkhtmltopdf.wkhtmltox -e" }

Write-Host "Using pandoc:      $pandoc"
Write-Host "Using wkhtmltopdf: $wkhtml"

$src = Join-Path $here "RESUME.md"
$css = Join-Path $here "style.css"
$pdf = Join-Path $here "Sameer_Asif_Resume.pdf"
$docx = Join-Path $here "Sameer_Asif_Resume.docx"
$txt = Join-Path $here "Sameer_Asif_Resume.txt"
$html = Join-Path $here "Sameer_Asif_Resume.html"

if (-not (Test-Path $src)) { throw "RESUME.md not found at $src" }

# --- PDF (via HTML + wkhtmltopdf, fully selectable text, ATS-safe) ---
Write-Host "Building PDF..."
& $pandoc $src `
    --from "markdown+yaml_metadata_block+smart" `
    --to html5 `
    --standalone `
    --css "style.css" `
    --metadata "pagetitle=Sameer Asif Resume" `
    --pdf-engine "$wkhtml" `
    --pdf-engine-opt="--enable-local-file-access" `
    --pdf-engine-opt="--print-media-type" `
    --pdf-engine-opt="--margin-top" --pdf-engine-opt="0" `
    --pdf-engine-opt="--margin-bottom" --pdf-engine-opt="0" `
    --pdf-engine-opt="--margin-left" --pdf-engine-opt="0" `
    --pdf-engine-opt="--margin-right" --pdf-engine-opt="0" `
    -o $pdf

# --- DOCX (universally ATS-safe, opens in Word/WPS) ---
Write-Host "Building DOCX..."
& $pandoc $src `
    --from "markdown+yaml_metadata_block+smart" `
    --to docx `
    -o $docx

# --- Plain TXT (for strict ATS portals) ---
Write-Host "Building TXT..."
& $pandoc $src `
    --from "markdown+yaml_metadata_block+smart" `
    --to plain `
    --wrap=preserve `
    -o $txt

# --- HTML (so you can preview in browser; also used as PDF source) ---
Write-Host "Building HTML preview..."
& $pandoc $src `
    --from "markdown+yaml_metadata_block+smart" `
    --to html5 `
    --standalone `
    --css "style.css" `
    --metadata "pagetitle=Sameer Asif Resume" `
    -o $html

Write-Host ""
Write-Host "Outputs:"
Write-Host "  $pdf"
Write-Host "  $docx"
Write-Host "  $txt"
Write-Host "  $html"
