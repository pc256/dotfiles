# gnu tools
alias find='gfind'
alias grep='ggrep --exclude-dir=".git"'
alias sed='gsed'

# apps
alias vlc='open ~/Applications/VLC.app'

# useful
alias randpw='openssl rand -base64'
alias j7='export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'`'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`'

# git aliases
if [ -f ~/.git_aliases ]; then
    . ~/.git_aliases
fi

# docker aliases
if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi
