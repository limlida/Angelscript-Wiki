# Angelscript API 页面增强脚本
# 添加来源链接、改进格式、创建索引

$ErrorActionPreference = "Stop"

$RawAPIPath = "e:\Angelscript-Wiki\raw\API"
$WikiEntitiesPath = "e:\Angelscript-Wiki\wiki\entities"

Write-Host "========================================"
Write-Host "Angelscript API 页面增强"
Write-Host "========================================"

# 函数：增强单个页面
function Enhance-Page {
    param(
        [string]$EntityName,
        [string]$SourcePath
    )

    $outputPath = Join-Path $WikiEntitiesPath "$EntityName.md"

    if (-not (Test-Path $outputPath)) {
        return
    }

    try {
        $content = Get-Content $outputPath -Raw -Encoding UTF8

        # 检查是否已经有来源部分
        if ($content -match "## 来源" -or $content -match "## Source") {
            return
        }

        # 确定来源子目录
        $sourceRelPath = ""
        if ($SourcePath -match "Global") {
            $sourceRelPath = "Global"
        } elseif ($SourcePath -match "Structs") {
            $sourceRelPath = "Structs"
        }

        # 添加来源部分
        $sourceSection = "`n## 来源`n`n- [raw/API/$sourceRelPath/$EntityName.md](../../raw/API/$sourceRelPath/$EntityName.md)`n"

        # 在 --- 结束后、### 开始前添加？或者在末尾添加
        if ($content -match "---`s*$") {
            # 内容末尾是 ---，把来源添加在 --- 之前
            $content = $content -replace "---`s*$", "$sourceSection`n---"
        } else {
            # 在末尾添加
            $content += $sourceSection
        }

        # 保存
        [System.IO.File]::WriteAllText($outputPath, $content, [System.Text.Encoding]::UTF8)

        return $true
    } catch {
        Write-Host "  Error enhancing $EntityName : $_"
        return $false
    }
}

Write-Host "Starting enhancement..."

$countEnhanced = 0
$processed = 0

# 处理 Classes/Global
Write-Host "`nProcessing Global/Classes..."
$globalDir = Join-Path $RawAPIPath "Global"
if (Test-Path $globalDir) {
    $globalFiles = Get-ChildItem -Path $globalDir -Filter "*.md" -File
    foreach ($file in $globalFiles) {
        $entityName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $result = Enhance-Page -EntityName $entityName -SourcePath $globalDir
        if ($result) { $countEnhanced++ }
        $processed++
        if ($processed % 500 -eq 0) {
            Write-Host "  Processed $processed, enhanced $countEnhanced"
        }
    }
}

# 处理 Structs
Write-Host "`nProcessing Structs..."
$structsDir = Join-Path $RawAPIPath "Structs"
if (Test-Path $structsDir) {
    $structsFiles = Get-ChildItem -Path $structsDir -Filter "*.md" -File
    foreach ($file in $structsFiles) {
        $entityName = [System.IO.Path]::GetFileNameWithoutExtension($file.Name)
        $result = Enhance-Page -EntityName $entityName -SourcePath $structsDir
        if ($result) { $countEnhanced++ }
        $processed++
        if ($processed % 500 -eq 0) {
            Write-Host "  Processed $processed, enhanced $countEnhanced"
        }
    }
}

Write-Host "`n========================================"
Write-Host "Enhancement complete!"
Write-Host "  Enhanced: $countEnhanced pages"
Write-Host "========================================"
