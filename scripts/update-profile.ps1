# Disable colors using TERM environment variable
# https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_ansi_terminals?view=powershell-7.3#disabling-ansi-output
[System.Environment]::SetEnvironmentVariable('TERM','dumb', 'Machine')

# Disable colors in PowerShell Core
$profileDirectory = Split-Path $profile -Parent
New-Item -ItemType Directory -Force -Path $profileDirectory
New-Item -Type File -Path $profile
Add-Content -Path $profile -Value '$PSStyle.OutputRendering="PlainText"'
. $profile;
