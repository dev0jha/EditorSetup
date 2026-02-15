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
    git checkout @args
}
function gr{
    git remote @args
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
function gf{
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
function cl {
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
function touch {
    param (
        [Parameter(Mandatory = $true)]
        [string[]]$Path
    )
    foreach ($file in $Path) {
        if (Test-Path $file) {
            (Get-Item $file).LastWriteTime = Get-Date
        } else {
            New-Item -ItemType File -Path $file | Out-Null
        }
    }
}
function mkdir {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Path
    )

    foreach ($p in $Path) {
        New-Item -ItemType Directory -Path $p -Force | Out-Null
    }
}
function co {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Path
    )

    foreach ($p in $Path) {
        Copy-Item -Path $p -Destination (Split-Path -Path $p -Leaf) -Force
    }
}
function mo {
    param (
        [Parameter(ValueFromRemainingArguments = $true)]
        [string[]]$Path
    )

    foreach ($p in $Path) {
        Move-Item -Path $p -Destination (Split-Path -Path $p -Leaf) -Force
    }
}
function vs {
    code . @args # Open the current directory in Visual Studio Code 
}
function zip {
    param(
        [Parameter(Mandatory)]
        [string]$Source,

        [string]$Dest
    )

    if (-not $Dest) {
        $Dest = (Split-Path $Source -Leaf)
    }

    if ($Dest -notmatch '\.zip$') {
        $Dest += '.zip'
    }

    Compress-Archive -Path $Source -DestinationPath $Dest -Force
}
function unzip {
    param(
        [Parameter(Mandatory)]
        [string]$ZipFile,

        [string]$Dest
    )

    if (-not (Test-Path $ZipFile)) {
        Write-Error "File not found: $ZipFile"
        return
    }

    if (-not $Dest) {
        $Dest = (Split-Path $ZipFile -LeafBase)
    }

    Expand-Archive -Path $ZipFile -DestinationPath $Dest -Force
}
function gmg {
    git merge @args
}
function gst{
    git stash @args
}










