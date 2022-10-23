# Add the following line in your $PROFILE
# . "${env:USERPROFILE}\dots\pwsh\.pwsh.ps1"

$this_dir = (Split-Path $MyInvocation.MyCommand.Path)
if (Test-Path -Path "${this_dir}\.pwsh.d") {
    Get-ChildItem -Path "${this_dir}\.pwsh.d" | Foreach { . $_.FullName }
}
