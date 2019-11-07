# common aliases
# enable color support of ls and also add handy aliases
#
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# gnu tools
alias find='gfind'
alias grep='ggrep --exclude-dir=".git"'
alias sed='gsed'

# useful
alias randpw='openssl rand -base64'
alias j7='export JAVA_HOME=`/usr/libexec/java_home -v '1.7*'`'
alias j8='export JAVA_HOME=`/usr/libexec/java_home -v '1.8*'`'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


# qriously
if [ -f ~/.qriously_aliases ]; then
    . ~/.qriously_aliases
fi

# git aliases
if [ -f ~/.git_aliases ]; then
    . ~/.git_aliases
fi

# docker aliases
if [ -f ~/.docker_aliases ]; then
    . ~/.docker_aliases
fi
