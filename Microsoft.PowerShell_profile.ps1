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

function gp{
    git push origin main
}
