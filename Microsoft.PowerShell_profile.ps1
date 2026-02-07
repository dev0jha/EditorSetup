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
function bs{
    bun switch @args
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
function gb {
    git branch @args
}
function ginit{
    git init
}
function gfetch{
    git fetch origin @args
}
function bi {
    bun install @args
}
