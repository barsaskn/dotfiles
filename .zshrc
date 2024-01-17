[[ $- != *i* ]] && return

#################  LINE  #################

precmd() {
  if ! command -v git &> /dev/null; then
    PS1='%B%F{yellow}[%n][%1~] >%f%b '
	return
  fi

  if ! git rev-parse --is-inside-work-tree &> /dev/null; then
    PS1='%B%F{yellow}[%n][%1~] >%f%b '
	return
  fi
	branch_name=$(git branch --show-current)
	PS1="%B%F{yellow}[%n][%1~][$branch_name] >%f%b "
}

####################  HISTORY  #################

HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS

####################  BINDKEYS  #################

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey "^[[3~" delete-char

#################  ENV  #################  

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export LFS=/mnt/lfs

#################  NEOFETCH  #################  

if command -v neofetch &> /dev/null; then
    neofetch		
fi


