# Batch Process Angelscript API Files to Wiki Entities
# This script converts API .md files from raw/API/ to wiki/entities/

param(
    [Parameter(Mandatory=$true)]
    [string[]]$TypesToProcess
)

$ErrorActionPreference = "Continue"

# Paths
$apiBasePath = "e:\Angelscript-Wiki\raw\API"
$wikiEntitiesPath = "e:\Angelscript-Wiki\wiki\entities"

Write-Host "=== Starting Batch Processing ===" -ForegroundColor Cyan
Write-Host "API Base Path: $apiBasePath" -ForegroundColor Gray
Write-Host "Wiki Entities Path: $wikiEntitiesPath" -ForegroundColor Gray
Write-Host ""

# Ensure output directory exists
if (-not (Test-Path $wikiEntitiesPath)) {
    New-Item -ItemType Directory -Path $wikiEntitiesPath -Force | Out-Null
    Write-Host "Created directory: $wikiEntitiesPath" -ForegroundColor Green
}

$successCount = 0
$failCount = 0
$skippedCount = 0

foreach ($typeName in $TypesToProcess) {
    # Try both Global and Structs folders
    $inputPath = $null
    $category = "Unknown"
    
    # Check Global folder first
    $globalPath = Join-Path $apiBasePath "Global\$typeName.md"
    $structsPath = Join-Path $apiBasePath "Structs\$typeName.md"
    
    if (Test-Path $globalPath) {
        $inputPath = $globalPath
        $category = "Class"
    }
    elseif (Test-Path $structsPath) {
        $inputPath = $structsPath
        $category = "Struct"
    }
    else {
        Write-Host "[SKIP] $typeName not found in API folders" -ForegroundColor Yellow
        $skippedCount++
        continue
    }
    
    try {
        # Read the source file
        $content = Get-Content -Path $inputPath -Raw -Encoding UTF8
        
        # Convert to proper format for wiki entity page
        $outputContent = @"
---
title: "$typeName"
category: entities
date: $(Get-Date -Format "yyyy-MM-dd")
tags:
  - $category
---

$content
"@
        
        # Write the output file
        $outputPath = Join-Path $wikiEntitiesPath "$typeName.md"
        Set-Content -Path $outputPath -Value $outputContent -Encoding UTF8 -NoNewline
        
        Write-Host "[SUCCESS] $typeName" -ForegroundColor Green
        $successCount++
    }
    catch {
        Write-Host "[ERROR] Failed to process $typeName : $_" -ForegroundColor Red
        $failCount++
    }
}

Write-Host ""
Write-Host "=== Processing Complete ===" -ForegroundColor Cyan
Write-Host "Success: $successCount" -ForegroundColor Green
Write-Host "Failed: $failCount" -ForegroundColor Red
Write-Host "Skipped: $skippedCount" -ForegroundColor Yellow
Write-Host "Total attempted: $($TypesToProcess.Count)" -ForegroundColor Gray
Write-Host ""
