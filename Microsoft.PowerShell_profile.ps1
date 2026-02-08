Import-Module PSReadLine
oh-my-posh init pwsh --config "$HOME\Documents\WindowsPowerShell\custom.omp.json" | Invoke-Expression

function bro {
    bun run dev 
}
 function brocook { 
    bun run build 
}
function bi { 
    bun install @args 
 }
function bad { 
    bun add @args 
}
function br { 
    bun remove @args 
}
function gsb{
    git switch @args
}
function gcb {
    git checkout -b @args
}
function gbd {
    git branch -d @args
}
function py {
    python @args
}

function ga {
    git add @args
}

function gco {
    git commit -m ($args -join " ")
}

function gs {
    git status
}

function gpush {
    git push origin main
}
function gpull {
    git pull origin main
}
function gb {
    git branch @args
}
function ginit{
    git init
}
function gfetch{
    git fetch origin @args
}
function glog {
    git log --oneline --graph --decorate
}
function bi {
    bun install @args
}
function ..{
    Set-Location ..
}
function ... {
 Set-Location ../.. 
}
function .... {
 Set-Location ../../.. 
}
function cls {
    Clear-Host
}
function rm {
    Remove-Item @args -Confirm
}

function cp {
    Copy-Item @args -Confirm
}

function mv {
    Move-Item @args -Confirm
}






