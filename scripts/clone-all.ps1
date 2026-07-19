param([string]$Dest = "$env:USERPROFILE\repos\ai-redteam-tools")
$ErrorActionPreference = "Continue"
New-Item -ItemType Directory -Force -Path $Dest | Out-Null
$repos = @("T3MP3ST", "wallbreaker", "OBLITERATUS", "heretic", "strix", "ai-redteam-arsenal-2026")
foreach ($r in $repos) {
  $path = Join-Path $Dest $r
  if (Test-Path $path) { Write-Host "[skip] $r"; continue }
  Write-Host "[clone] maux339-cpu/$r"
  gh repo clone "maux339-cpu/$r" $path
}
Write-Host "Done -> $Dest"