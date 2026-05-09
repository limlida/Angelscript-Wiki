# Simple Linker
$WikiPath = "e:\Angelscript-Wiki\wiki\entities"
$allTypes = @()
Get-ChildItem -Path $WikiPath -Filter "*.md" -File | ForEach-Object {
    $name = [System.IO.Path]::GetFileNameWithoutExtension($_.Name)
    if (-not [string]::IsNullOrWhiteSpace($name)) {
        $allTypes += $name
    }
}
$sortedTypes = $allTypes | Sort-Object -Property Length -Descending
Write-Host "Found $($sortedTypes.Count) types"
Write-Host "Processing all files..."
$processedCount = 0
$linkedCount = 0
Get-ChildItem -Path $WikiPath -Filter "*.md" -File | ForEach-Object {
    $filePath = $_.FullName
    $currentName = [System.IO.Path]::GetFileNameWithoutExtension($filePath)
    $content = Get-Content $filePath -Raw -Encoding UTF8
    $original = $content
    foreach ($typeName in $sortedTypes) {
        if ($typeName -eq $currentName) { continue }
        $escaped = [regex]::Escape($typeName)
        $pattern = "(?<!\[)(?<!\[\[)$escaped(?!\])(?!\])"
        $content = [regex]::Replace($content, $pattern, "[[$typeName]]")
    }
    if ($content -ne $original) {
        [System.IO.File]::WriteAllText($filePath, $content, [System.Text.Encoding]::UTF8)
        $linkedCount++
    }
    $processedCount++
    if ($processedCount % 500 -eq 0) { Write-Host "  Processed $processedCount, linked $linkedCount" }
}
Write-Host "Done! Processed $processedCount files, linked $linkedCount"

