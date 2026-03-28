$ErrorActionPreference = 'Stop'

$repoRoot = Resolve-Path (Join-Path $PSScriptRoot '..')
$targetDir = Join-Path $repoRoot 'data\raw\kaggle_s5e10'

if (-not (Test-Path $targetDir)) {
    New-Item -ItemType Directory -Path $targetDir | Out-Null
}

if (-not (Get-Command kaggle -ErrorAction SilentlyContinue)) {
    throw 'Kaggle CLI not found. Install it and configure ~/.kaggle/kaggle.json first.'
}

Push-Location $targetDir
try {
    kaggle competitions download -c playground-series-s5e10
    Get-ChildItem -File -Filter *.zip | ForEach-Object {
        Expand-Archive -Path $_.FullName -DestinationPath $targetDir -Force
    }
}
finally {
    Pop-Location
}

Write-Host "Data ready in $targetDir"
