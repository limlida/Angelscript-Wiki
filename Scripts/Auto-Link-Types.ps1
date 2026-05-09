# Angelscript API Auto Linker
# Automatically links all type names in all pages to wiki links

$ErrorActionPreference = "Stop"

$WikiEntitiesPath = "e:\Angelscript-Wiki\wiki\entities"
$RawAPIPath = "e:\Angelscript-Wiki\raw\API"

Write-Host "========================================"
Write-Host "Angelscript API Auto Linker"
Write-Host "========================================"

# Step 1: Collect all existing types
Write-Host "`nStep 1: Collecting all existing type names..."

$typeNames = @{}

# Collect from Global (Classes)
$globalDir = Join-Path $RawAPIPath "Global"
if (Test-Path $globalDir) {
    $globalFiles = Get-ChildItem -Path $globalDir -Filter "*.md" -File
    foreach ($file in $globalFiles) {
        $name = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        if (-not $typeNames.ContainsKey($name)) {
            $typeNames[$name] = $true
        }
    }
    Write-Host "  Collected $($globalFiles.Count) class names"
}

# Collect from Structs
$structsDir = Join-Path $RawAPIPath "Structs"
if (Test-Path $structsDir) {
    $structsFiles = Get-ChildItem -Path $structsDir -Filter "*.md" -File
    foreach ($file in $structsFiles) {
        $name = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        if (-not $typeNames.ContainsKey($name)) {
            $typeNames[$name] = $true
        }
    }
    Write-Host "  Collected $($structsFiles.Count) struct names"
}

Write-Host "  Total: $($typeNames.Count) type names"

# Step 2: Sort by length (longest first to avoid partial matches)
Write-Host "`nStep 2: Sorting types by length..."
$sortedNames = $typeNames.Keys | Sort-Object -Property Length -Descending
Write-Host "  Sorted"

# Step 3: Process pages
Write-Host "`nStep 3: Processing ALL pages..."

$processed = 0
$linked = 0

# Get all entity files
$entityFiles = Get-ChildItem -Path $WikiEntitiesPath -Filter "*.md" -File

foreach ($file in $entityFiles) {
    $entityName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)

    try {
        $content = Get-Content $file.FullName -Raw -Encoding UTF8

        # Skip if already linked (we can detect later)
        if ($content -match "\[\[.*?\]\]") {
            $processed++
            continue
        }

        $originalContent = $content

        # Link each type
        foreach ($name in $sortedNames) {
            # Skip linking to self
            if ($name -eq $entityName) {
                continue
            }

            # Only link if it's a whole word match
            # Look for: word boundary + name + word boundary
            # But don't link inside existing links or code
            $pattern = "(?<!\[)\b$([Regex]::Escape($name))\b(?!\])"
            $replacement = "[[$name]]"

            $content = [Regex]::Replace($content, $pattern, $replacement)
        }

        if ($content -ne $originalContent) {
            [System.IO.File]::WriteAllText($file.FullName, $content, [System.Text.Encoding]::UTF8)
            $linked++
        }

        $processed++

        if ($processed % 20 -eq 0) {
            Write-Host "  Processed $processed, linked $linked"
        }
    }
    catch {
        Write-Host "  Error processing $entityName : $_"
    }
}

Write-Host "`n========================================"
Write-Host "COMPLETE!"
Write-Host "  Processed: $processed"
Write-Host "  Linked: $linked"
Write-Host "========================================"
