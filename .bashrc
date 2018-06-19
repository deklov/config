if [ -z "$PS1" ]; then
    return
fi

PATH="$PATH:$HOME/install/bin"
PATH="$PATH:$HOME/install/homebrew/bin"
PATH="$PATH:$HOME/install/gradle-4.8-rc-2/bin"

source ~/.bash_aliases

function ssh_add {
    file="$1"
    
    name=`uname`
    if [ $name == "Darwin" ]; then
        options="-K"
    fi

    if [ -e $file ]; then
        ssh-add $options $file
    fi
}

eval `ssh-agent`
ssh_add ~/.ssh/github_rsa
ssh_add ~/.ssh/unitq-aws-dev-deklov
