if (-Not $(Get-Command vim -errorAction SilentlyContinue))
{
    $env:Path += ';C:\Program Files (x86)\Vim\vim90\'
}
Import-Module posh-git
Set-Alias -Name which Get-Command

# git aliases
function Get-GitStatus { & git status $args }
Set-Alias -Name gs -Value Get-GitStatus

function Set-GitCommitMessage { & git commit -m }
Set-Alias -Name gcmsg -Value Set-GitCommitMessage

function Set-GitAdd { & git add -A $args }
Set-Alias -Name gaa -Value Set-GitAdd

function Get-GitBranch { & git branch $args }
Set-Alias -Name gb -Value Get-GitBranch

