# Zip Project Script for Windows (PowerShell)
param (
    [string]$TargetFolder
)

# 1. Ask for folder name if not provided
if (-not $TargetFolder) {
    $folders = @(Get-ChildItem -Directory | Where-Object { $_.Name -notmatch "node_modules|dist|\.git" } | Select-Object -ExpandProperty Name)
    
    if ($folders.Count -eq 0) {
        Write-Error "No folders found to zip."
        exit
    }

    Write-Host "`nAvailable folders:" -ForegroundColor Cyan
    for ($i = 0; $i -lt $folders.Count; $i++) {
        Write-Host "[$($i + 1)] $($folders[$i])"
    }

    $Selection = Read-Host "`nEnter number or folder name (default: 1)"
    
    if (-not $Selection) {
        $TargetFolder = $folders[0]
    }
    elseif ($Selection -as [int] -and $Selection -le $folders.Count -and $Selection -gt 0) {
        $TargetFolder = $folders[$Selection - 1]
    }
    else {
        $TargetFolder = $Selection
    }
}

$SourcePath = Join-Path $PSScriptRoot $TargetFolder
$ZipName = "$TargetFolder.zip"
$DestinationPath = Join-Path $PSScriptRoot $ZipName

# Check if folder exists
if (-not (Test-Path $SourcePath)) {
    Write-Error "Folder '$TargetFolder' not found at $SourcePath"
    exit
}

Write-Host "--- Starting Compression for $TargetFolder ---" -ForegroundColor Cyan

try {
    # 2. Clean up old zip if it exists
    if (Test-Path $DestinationPath) {
        Remove-Item $DestinationPath -Force
        Write-Host "Removed old $ZipName" -ForegroundColor Gray
    }

    # 3. Create a temporary staging area to avoid node_modules
    $TempPath = Join-Path $env:TEMP "zip_stage_$(Get-Random)"
    New-Item -ItemType Directory -Path $TempPath -Force | Out-Null

    Write-Host "Staging files (ignoring node_modules, dist, git, docx, pdf)..." -ForegroundColor Yellow

    # Copy files excluding node_modules, dist, .git, .docx, and .pdf
    Get-ChildItem -Path $SourcePath -Exclude "node_modules","dist",".git","*.docx","*.pdf" | ForEach-Object {
        Copy-Item -Path $_.FullName -Destination $TempPath -Recurse -Force
    }

    # 4. Create the Zip
    Write-Host "Creating Zip archive..." -ForegroundColor Yellow
    Compress-Archive -Path "$TempPath\*" -DestinationPath $DestinationPath -Force

    # 5. Cleanup
    Remove-Item $TempPath -Recurse -Force

    Write-Host "--- Success! ---" -ForegroundColor Green
    Write-Host "File created at: $DestinationPath"
    Write-Host "You can now submit this zip file."
}
catch {
    Write-Error "An error occurred: $($_.Exception.Message)"
}
finally {
    if (Test-Path $TempPath) { Remove-Item $TempPath -Recurse -Force }
}
