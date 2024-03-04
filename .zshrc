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

#################  NEOFETCH  #################  

if command -v fastfetch &> /dev/null; then
    fastfetch		
fi
if [[ -t 0 && $- = *i* ]]
then
    stty -ixon
fi 

#################  ZELLIJ  ################# 

export ZELLIJ_AUTO_EXIT="true"

if [[ -z "$ZELLIJ" ]]; then
    if [[ "$ZELLIJ_AUTO_ATTACH" == "true" ]]; then
        zellij attach -c
    else
        zellij
    fi

    if [[ "$ZELLIJ_AUTO_EXIT" == "true" ]]; then
        exit
    fi
fi

zellij_tab_name_update() {
    if [[ -n $ZELLIJ ]]; then
        local current_dir=$PWD
        if [[ $current_dir == $HOME ]]; then
            current_dir="~"
        else
            current_dir=${current_dir##*/}
        fi
        command nohup zellij action rename-tab $current_dir >/dev/null 2>&1
    fi
}

zellij_tab_name_update
chpwd_functions+=(zellij_tab_name_update)
