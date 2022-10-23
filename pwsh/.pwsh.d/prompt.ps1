# PS1
Function Prompt {
    # Test if admin role is active
    $identity = [Security.Principal.WindowsIdentity]::GetCurrent()
    $principal = [Security.Principal.WindowsPrincipal] $identity
    $admin_role = [Security.Principal.WindowsBuiltInRole]::Administrator
    $is_admin = $principal.IsInRole($admin_role)

    # Current working directory
    $cwd = if ($pwd.Path -eq $env:USERPROFILE) { "~" } else { Split-Path "$($pwd.Path)" -Leaf }

    # Terminal window title
    $title_prefix = if ($is_admin) { "[ADMIN] " } else { "" }
    $Host.UI.RawUI.WindowTitle = "${title_prefix}${cwd}"

    # Try to get VSC status
    if (Get-Module -Name posh-git) { $vcs_status = Write-VcsStatus }

    # Powerline left
    Write-Host -NoNewline -ForegroundColor Yellow "("
        Write-Host -NoNewline -ForegroundColor Cyan "$env:USERNAME"
        Write-Host -NoNewline "@"
        Write-Host -NoNewline -ForegroundColor Green "$env:COMPUTERNAME"
        Write-Host -NoNewline -ForegroundColor Magenta " $cwd"
    Write-Host -NoNewline -ForegroundColor Yellow ")"
    Write-Host -NoNewline "$vcs_status"

    # If we got posh-git, make the prompt two-line height
    if (Get-Module -Name posh-git) {
        # Powerline middle filler
        $sep = " "
        $sep_len = $sep.Length

        # Powerline right 
        $right_powerline = "$((Get-Date).ToString("HH:MM:ss"))"
        $right_powerline_len = $right_powerline.Length
        $term_width = $Host.UI.RawUI.WindowSize.Width
        While ($Host.UI.RawUI.CursorPosition.X -lt $term_width - $right_powerline_len) {
            Write-Host -NoNewline $sep
        }
        Write-Host -ForegroundColor DarkYellow $right_powerline
    }

    # Prompt symbol
    $prompt = if ($is_admin) { "#" } else { "$" }
    return "$prompt "
}

# PS2
Set-PSReadlineOption -ContinuationPrompt "> "
