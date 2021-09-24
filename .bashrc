# If in a git repository, find the branch
function git_branch() {
    if [ -d .git ] ; then
        printf "%s" "($(git branch 2> /dev/null | awk '/\*/{print $2}'))";
    fi
}

export PS1="\[\033[38;5;2m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;5m\]:\[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\] \[$(tput sgr0)\]\[\033[38;5;14m\]\$(git_branch)\[$(tput sgr0)\]\n\[$(tput sgr0)\]"
