param(
    [Parameter(Mandatory = $true)]
    [string]$PublicRepoPath
)

$ErrorActionPreference = "Stop"
$source = Split-Path -Parent $PSScriptRoot
$target = (Resolve-Path $PublicRepoPath).Path

$forbidden = @("cmd", "internal", "database", "web", "bin", "build")
foreach ($name in $forbidden) {
    if (Test-Path (Join-Path $source $name)) {
        throw "Refusing to continue: forbidden source directory '$name' exists in the public package."
    }
}

Get-ChildItem -Force $source | Where-Object {
    $_.Name -notin @("scripts", ".git")
} | ForEach-Object {
    Copy-Item $_.FullName -Destination $target -Recurse -Force
}

Write-Host "Public documentation copied to $target" -ForegroundColor Green
Write-Host "Review git status before committing. This script does not commit or push." -ForegroundColor Yellow
