$env:Path += 'C:\Program Files (x86)\Vim\vim90\'
Import-Module posh-git
New-Alias which Get-Command

# git aliases 
function Get-GitStatus { & git status $args }
New-Alias -Name gs -Value Get-GitStatus

function Set-GitCommitMessage { & git commit -m }
New-Alias -Name gcmsg -Value Set-GitCommitMessage

function Set-GitAdd { & git add -A $args }
New-Alias -Name gaa -Value Set-GitAdd

function Get-GitBranch { & git branch $args }
New-Alias -Name gb -Value Get-GitBranch

