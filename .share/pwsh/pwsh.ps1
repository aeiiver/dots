# Source this file in your $PROFILE:
# . "${env:USERPROFILE}\dots\.share\pwsh\pwsh.ps1"

$NHD_DOTS = "${env:USERPROFILE}\dots"

if (Test-Path -Path "${NHD_DOTS}\.share\pwsh\pwsh.ps1.d") {
    Get-ChildItem -Path "${NHD_DOTS}\.share\pwsh\pwsh.ps1.d" | Foreach { . $_.FullName }
}
