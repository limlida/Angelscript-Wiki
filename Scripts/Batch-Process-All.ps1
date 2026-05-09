# Angelscript API Batch Processing Script - Full Version
# Automatically converts all files from raw/API/ to wiki entity pages

param(
    [int]$Limit = 0,  # 0 = process all files
    [switch]$SkipExisting,  # skip existing files
    [string]$Category = "all"  # all, classes, structs, globals
)

$ErrorActionPreference = "Stop"

# Path configuration
$RawAPIPath = "e:\Angelscript-Wiki\raw\API"
$WikiEntitiesPath = "e:\Angelscript-Wiki\wiki\entities"

# Ensure output directory exists
if (-not (Test-Path $WikiEntitiesPath)) {
    New-Item -ItemType Directory -Path $WikiEntitiesPath -Force | Out-Null
}

# Directories to process
$directoriesToProcess = @()
if ($Category -eq "all" -or $Category -eq "classes") {
    $directoriesToProcess += @{Path = Join-Path $RawAPIPath "Global"; TypeTag = "Class" }
}
if ($Category -eq "all" -or $Category -eq "structs") {
    $directoriesToProcess += @{Path = Join-Path $RawAPIPath "Structs"; TypeTag = "Struct" }
}

$totalProcessed = 0
$totalSkipped = 0
$allCreatedFiles = @()

# Process function
function Process-File {
    param(
        [string]$FilePath,
        [string]$TypeTag
    )
    
    try {
        $fileName = [System.IO.Path]::GetFileName($FilePath)
        $entityName = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
        
        if ([string]::IsNullOrWhiteSpace($entityName)) {
            Write-Host "  Skipping invalid filename: $fileName"
            return $false
        }
        
        $outputPath = Join-Path $WikiEntitiesPath "$entityName.md"
        
        if ($SkipExisting -and (Test-Path $outputPath)) {
            return $false
        }
        
        $content = Get-Content $FilePath -Raw -Encoding UTF8
        if ([string]::IsNullOrWhiteSpace($content)) {
            Write-Host "  Skipping empty file: $fileName"
            return $false
        }
        
        # Generate YAML frontmatter
        $frontmatter = @"
---
title: "$entityName"
category: entities
date: 2026-05-08
tags:
  - $TypeTag
---

"@
        
        $newContent = $frontmatter + $content
        
        # Write file
        [System.IO.File]::WriteAllText($outputPath, $newContent, [System.Text.Encoding]::UTF8)
        
        $script:allCreatedFiles += $entityName
        return $true
    }
    catch {
        Write-Host "  Error processing $([System.IO.Path]::GetFileName($FilePath)): $_"
        return $false
    }
}

Write-Host "=========================================="
Write-Host "Angelscript API Batch Processing"
Write-Host "=========================================="
Write-Host "Source: $RawAPIPath"
Write-Host "Output: $WikiEntitiesPath"
Write-Host "Category: $Category"
Write-Host "Limit: $(if ($Limit -eq 0) { 'Unlimited' } else { $Limit })"
Write-Host "Skip Existing: $SkipExisting"
Write-Host ""

foreach ($dirInfo in $directoriesToProcess) {
    $dirPath = $dirInfo.Path
    $typeTag = $dirInfo.TypeTag
    
    if (-not (Test-Path $dirPath)) {
        Write-Host "Directory not found, skipping: $dirPath"
        continue
    }
    
    Write-Host "Processing $typeTag directory..."
    $files = Get-ChildItem -Path $dirPath -Filter "*.md" -File
    
    $filesToProcess = $files
    if ($Limit -gt 0) {
        $filesToProcess = $files | Select-Object -First $Limit
    }
    
    $count = 0
    foreach ($file in $filesToProcess) {
        $count++
        
        if ($count % 100 -eq 0) {
            Write-Host "  Processed $count / $($filesToProcess.Count) files..."
        }
        
        $result = Process-File -FilePath $file.FullName -TypeTag $typeTag
        if ($result) {
            $totalProcessed++
        } else {
            $totalSkipped++
        }
        
        # Check limit
        if ($Limit -gt 0 -and $totalProcessed -ge $Limit) {
            break
        }
    }
    
    Write-Host "  $typeTag directory complete: $count files"
}

Write-Host ""
Write-Host "=========================================="
Write-Host "Processing Complete!"
Write-Host "=========================================="
Write-Host "Created/Updated: $totalProcessed files"
Write-Host "Skipped: $totalSkipped files"
Write-Host ""

if ($allCreatedFiles.Count -gt 0) {
    Write-Host "Created files (first 20):"
    $allCreatedFiles | Select-Object -First 20 | ForEach-Object { Write-Host "  - [[$_]]" }
    
    if ($allCreatedFiles.Count -gt 20) {
        Write-Host "  ...and $($allCreatedFiles.Count - 20) more"
    }
}
