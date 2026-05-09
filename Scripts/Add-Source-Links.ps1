# Add Source Links to API Pages
# Adds source reference links to all generated API pages

$ErrorActionPreference = "Stop"

$RawAPIPath = "e:\Angelscript-Wiki\raw\API"
$WikiEntitiesPath = "e:\Angelscript-Wiki\wiki\entities"

Write-Host "========================================"
Write-Host "Add Source Links to API Pages"
Write-Host "========================================"

$countEnhanced = 0
$processed = 0

# Process Global/Classes
Write-Host "`nProcessing Global/Classes..."
$globalDir = Join-Path $RawAPIPath "Global"
if (Test-Path $globalDir) {
    $globalFiles = Get-ChildItem -Path $globalDir -Filter "*.md" -File
    foreach ($file in $globalFiles) {
        $entityName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $outputPath = Join-Path $WikiEntitiesPath "$entityName.md"

        if (-not (Test-Path $outputPath)) { continue }

        try {
            $content = Get-Content $outputPath -Raw -Encoding UTF8

            # Check if already has source section
            if ($content -match "## Source" -or $content -match "## 来源") {
                $processed++
                continue
            }

            # Add source section
            $sourceSection = "`n## Source`n`n- [raw/API/Global/$entityName.md](../../raw/API/Global/$entityName.md)`n"

            # Add before ending --- or at end
            if ($content -match "---`s*$") {
                $content = $content -replace "---`s*$", "$sourceSection`n---"
            } else {
                $content += $sourceSection
            }

            [System.IO.File]::WriteAllText($outputPath, $content, [System.Text.Encoding]::UTF8)

            $countEnhanced++
        } catch {
            Write-Host "  Error $entityName : $_"
        }

        $processed++
        if ($processed % 500 -eq 0) {
            Write-Host "  Processed $processed, enhanced $countEnhanced"
        }
    }
}

# Process Structs
Write-Host "`nProcessing Structs..."
$structsDir = Join-Path $RawAPIPath "Structs"
if (Test-Path $structsDir) {
    $structsFiles = Get-ChildItem -Path $structsDir -Filter "*.md" -File
    foreach ($file in $structsFiles) {
        $entityName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $outputPath = Join-Path $WikiEntitiesPath "$entityName.md"

        if (-not (Test-Path $outputPath)) { continue }

        try {
            $content = Get-Content $outputPath -Raw -Encoding UTF8

            # Check if already has source section
            if ($content -match "## Source" -or $content -match "## 来源") {
                $processed++
                continue
            }

            # Add source section
            $sourceSection = "`n## Source`n`n- [raw/API/Structs/$entityName.md](../../raw/API/Structs/$entityName.md)`n"

            # Add before ending --- or at end
            if ($content -match "---`s*$") {
                $content = $content -replace "---`s*$", "$sourceSection`n---"
            } else {
                $content += $sourceSection
            }

            [System.IO.File]::WriteAllText($outputPath, $content, [System.Text.Encoding]::UTF8)

            $countEnhanced++
        } catch {
            Write-Host "  Error $entityName : $_"
        }

        $processed++
        if ($processed % 500 -eq 0) {
            Write-Host "  Processed $processed, enhanced $countEnhanced"
        }
    }
}

Write-Host "`n========================================"
Write-Host "Complete!"
Write-Host "  Enhanced: $countEnhanced pages"
Write-Host "========================================"
