# Disable colors in PowerShell Core
$profileDirectory = Split-Path $profile -Parent
New-Item -ItemType Directory -Force -Path $profileDirectory
New-Item -Type File -Path $profile
Add-Content -Path $profile -Value '$PSStyle.OutputRendering="PlainText"'
. $profile;
