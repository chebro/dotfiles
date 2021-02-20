#	         _              
#	 _______| |__  _ __ ___ 
#	|_  / __| '_ \| '__/ __|
#	 / /\__ \ | | | | | (__ 
#	/___|___/_| |_|_|  \___|
		
# friendship ended with spaceship, now starship is my best friend
eval "$(starship init zsh)"

# oh-my-zsh section 
export ZSH="$HOME/.oh-my-zsh"
#export ZSH_THEME="spaceship"
export plugins=(git zsh-syntax-highlighting zsh-autosuggestions zsh-history-substring-search)
source $ZSH/oh-my-zsh.sh

### Fix slowness of pastes with zsh-syntax-highlighting.zsh
pasteinit() {
    OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
    zle -N self-insert url-quote-magic 
}

pastefinish() {
    zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish

# options section
setopt correct                                                  # Auto correct mistakes
setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
setopt nocaseglob                                               # Case insensitive globbing
setopt rcexpandparam                                            # Array expension with parameters
setopt nocheckjobs                                              # Don't warn about running processes when exiting
setopt numericglobsort                                          # Sort filenames numerically when it makes sense
setopt nobeep                                                   # No beep
setopt appendhistory                                            # Immediately append history instead of overwriting
setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
setopt autocd                                                   # if only directory path is entered, cd there.

# set zsh-completion options
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       # Case insensitive tab completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}           # Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' rehash true                              # automatically find new executables in path 
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

HISTFILE=~/.zsh_history
HISTSIZE=20000
SAVEHIST=10000
WORDCHARS=${WORDCHARS//\/[&.;]}                                 # Don't consider certain characters part of the word

# keybindings section
bindkey -e
bindkey '^[[7~' beginning-of-line                               # Home key
bindkey '^[[H' beginning-of-line                                # Home key
if [[ "${terminfo[khome]}" != "" ]]; then
  bindkey "${terminfo[khome]}" beginning-of-line                # [Home] - Go to beginning of line
fi
bindkey '^[[8~' end-of-line                                     # End key
bindkey '^[[F' end-of-line                                      # End key
if [[ "${terminfo[kend]}" != "" ]]; then
  bindkey "${terminfo[kend]}" end-of-line                       # [End] - Go to end of line
fi
bindkey '^[[2~' overwrite-mode                                  # Insert key
bindkey '^[[3~' delete-char                                     # Delete key
bindkey '^[[C'  forward-char                                    # Right key
bindkey '^[[D'  backward-char                                   # Left key
bindkey '^[[5~' history-beginning-search-backward               # Page up key
bindkey '^[[6~' history-beginning-search-forward                # Page down key

# navigate words with ctrl+arrow keys
bindkey '^[Oc' forward-word                                     #
bindkey '^[Od' backward-word                                    #
bindkey '^[[1;5D' backward-word                                 #
bindkey '^[[1;5C' forward-word                                  #
bindkey '^H' backward-kill-word                                 # delete previous word with ctrl+backspace
bindkey '^[[Z' undo                                             # Shift+tab undo last action

# alias section
alias ...='cd ../..'											# Lazy cd ../..
alias ls='ls --color=tty'										# Use tty colors when ls-ing
alias grep='grep --color=auto'									# Use tty colors when grep-ing
alias cp='cp -i'                                                # Confirm before overwriting something
alias df='df -h'                                                # Human-readable sizes
alias free='free -m'                                            # Show sizes in MB
alias pcman='sudo pacman'										# Lazy sudo pacman 
alias i3lock="$HOME/.config/i3lock/lock.sh"						# i3lock script

alias vim=nvim													# neo neo neo
alias rm='print "Did you mean trash-put? No? use \\\rm then"; false'
alias config='/usr/bin/git --git-dir=$HOME/Documents/dotfiles --work-tree=$HOME'
alias pfetch='PF_INFO="ascii title os kernel uptime pkgs memory" HOSTNAME="nautilus" pfetch'
alias tuturu="$HOME/Documents/scripts/bash/icat.sh"

# color man pages
export LESS_TERMCAP_mb=$'\E[01;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;47;34m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;36m'
export LESS=-r

# bind UP and DOWN arrow keys to history substring search
zmodload zsh/terminfo
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
bindkey '^[[A' history-substring-search-up			
bindkey '^[[B' history-substring-search-down

# export stuff
export EDITOR=vim				# set default editor
export GPG_TTY=$(tty)			# tell GPG to pipe output to tty
export PINENTRY_USER_DATA="USE_CURSES=1"

# TODO: create custom functions script
mcd () { mkdir -p "$1" && cd "$1" }

# change prompt at ⏾
DARK="$HOME/Documents/scripts/bash/is-it-dark.sh"

if [ -f $DARK ]; then
	if [  $($DARK) -ne 0 ]; then	
        sed -i 's/λ/⏾/g' "$HOME/.config/starship.toml"
    else
        sed -i 's/⏾/λ/g' "$HOME/.config/starship.toml"
    fi
fi

u=`tput bold`
nu=`tput sgr0`
k="v$(uname -r | cut -d'-' -f1)"

echo \
"\e[40m kernel \e[0m\e[46m\e[30m\e[0m\e[0m\
\e[46m\e[30m${u} $k ${nu}\e[0m\e[0m\e[40m\e[36m\e[0m\e[0m\
\e[40m agent \e[0m\e[44m\e[30m\e[0m\e[0m\
\e[44m\e[30m${u} $$ ${nu}\e[0m\e[0m\e[34m\e[0m\
"

