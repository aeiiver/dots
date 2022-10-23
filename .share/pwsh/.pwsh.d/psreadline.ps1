If (Get-Module -Name PSReadLine) {
    Set-PSReadLineOption -EditMode Emacs
    Set-PSReadLineOption -PredictionSource History
}
