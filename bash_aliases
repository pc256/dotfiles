# gnu tools
alias find='gfind'
alias grep='ggrep --exclude-dir=".git"'

# git aliases
alias gitbr='git branch'
alias gitco='git checkout'
alias gitlg='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit'
alias gpull='git pull'
alias gpush='git push'
alias gitst='git status'
alias gitx='/Applications/GitX.app/Contents/MacOS/GitX . &'

# docker / boot2docker
alias dockerhost='export DOCKER_HOST=`boot2docker socket 2>/dev/null`'

# apps
alias vlc='open ~/Applications/VLC.app'
