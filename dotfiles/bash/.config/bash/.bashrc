# if not running interactively, do not do anything
[[ $- != *i* ]] && return

# aliases
alias ls='ls --color=auto'
alias ll='ls -l'
alias la='ls -la'
alias b='bat'

# ansi colors for PS1
reset='\[\e[0m\]'
bold='\[\e[1m\]'
blue='\[\e[38;5;39m\]'
gray='\[\e[38;5;254m\]'
purple='\[\e[38;5;141m\]'
dpurple='\[\e[38;5;105m\]'
yellow='\[\e[38;5;220m\]'

# source git-prompt.sh
[[ -e $XDG_CONFIG_HOME/bash/git-prompt.sh ]] && . $XDG_CONFIG_HOME/bash/git-prompt.sh

# export git PS1 state variables
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWSTASHSTATE=1
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWCOLORHINTS=1

export PS1="${blue}┌[${bold}${purple}\u${reset}${blue}:${bold}${dpurple}\h${reset}${gray} \w${blue}] ${bold}${yellow}\$(__git_ps1 ' (%s) ')${reset}\n${blue}└\$${gray} "
