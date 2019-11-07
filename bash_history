# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTFILE=${HOME}/.history/$(date -u +%Y%m%d)_$(hostname -s)_$$
export HISTTIMEFORMAT="%Y%m%dT%H:%M:%S "
export HISTSIZE=2000
export HISTFILESIZE=2000
