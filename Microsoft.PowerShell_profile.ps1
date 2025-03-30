$env:PATH += ";C:\Program Files\Vim\vim91"
$env:PATH+=";C:\Program Files\Emacs\emacs-29.4\bin"
$env:HADOOP_HOME="C:\Program Files\winutils"
$env:PATH+=";C:\Program Files\apache-maven-3.9.9\bin"

if (-Not $(Get-Command vim -errorAction SilentlyContinue))
{
    $env:Path += ';C:\Program Files (x86)\Vim\vim90\'
}
Import-Module posh-git
Set-Alias -Name which Get-Command

# git aliases
function Get-GitStatus { & git status $args }
Set-Alias -Name gs -Value Get-GitStatus

function Set-GitCommitMessage { & git commit -m $args }
Set-Alias -Name gcmsg -Value Set-GitCommitMessage

function Set-GitAdd { & git add -A $args }
Set-Alias -Name gaa -Value Set-GitAdd

function Get-GitBranch { & git branch $args }
Set-Alias -Name gb -Value Get-GitBranch

function Git-CheckoutBranch { & git checkout -b $args }
Set-Alias -Name gcb -Value Git-CheckoutBranch

function Get-GitCheckout { & git checkout $args }
Set-Alias -Name gco -Value Get-GitCheckout

function Touch-Func { & New-Item -Type File $args }
Set-Alias -Name touch -Value Touch-Func

