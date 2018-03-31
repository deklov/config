PATH="$PATH:$HOME/install/bin"
PATH="$PATH:$HOME/install/homebrew/bin"

source .bash_aliases

function ssh_add {
    file="$1"
    if [ -e $file ]; then
        ssh-add -K $file
    fi
}

eval `ssh-agent`
ssh_add .ssh/github_rsa
