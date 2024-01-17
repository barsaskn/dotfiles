alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias update="sudo pacman -Syu && yay -Syu"
alias cp="cp -iv"
alias mv="mv -iv"
alias mkdir="mkdir -p"
alias cat="bat"
alias dockerclean='docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi $(docker images -aq) && docker network prune -f && docker volume prune -f'
alias gitcred="cat ~/.gitcred"
