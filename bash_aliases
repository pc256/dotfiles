# gnu tools
alias find='gfind'
alias grep='ggrep --exclude-dir=".git"'
alias sed='gsed'

# apps
alias vlc='open ~/Applications/VLC.app'

# useful
alias randpw='openssl rand -base64'

# git aliases
if [ -f ~/.git_aliases ]; then
    . ~/.git_aliases
fi

# docker aliases
if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi
