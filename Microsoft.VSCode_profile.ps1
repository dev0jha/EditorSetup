function bro {
    bun run dev
}

function py {
    python @args
}

function ga {
    git add @args
}

function gcommit {
    git commit -m ($args -join " ")
}

function gs {
    git status
}

function gpush{
  git push origin main
}

function bi {
    bun install @args
}
function gfetch{
    git fetch origin @args
}
function ginit{
    git init
}

function gb{
    git branch @args
}

