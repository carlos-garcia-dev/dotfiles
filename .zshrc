# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# THEMES
export ZSH="$HOME/.oh-my-zsh"
BAT_THEME="gruvbox-dark"
ZSH_THEME="custom-nanotech"

# PLUGINS
plugins=(
  git
  git-prompt
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

zstyle ':omz:update' mode auto

# HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history


# AUTOcompletions: 
FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

  autoload -Uz compinit
  compinit
fi


# CUSTOM aliases
alias v=openNvim
alias guc="git reset --soft HEAD~"
alias fp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

# FOLDER aliases
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='bat'
alias catn='/usr/bin/cat'

# SYSTEM aliases
alias updt='brew update && brew upgrade && brew outdated && brew cleanup'
alias dskt='cd ~/Desktop/'


# FNM configuration
eval "`fnm env`" 


# SOURCE external files
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# CUSTOM Functions
if [ -f ~/.myenvs ]; then
    source ~/.myenvs
fi

function openNvim {
  if [ $# -eq 0 ]; then
    nvim ./
  else
    nvim $1
  fi
}

function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

function fzf-lovely(){

	if [ "$0" = "h" ]; then
		fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
 	                echo {} is a binary file ||
	                 (bat --style=numbers --color=always {} ||
	                  highlight -O ansi -l {} ||
	                  coderay {} ||
	                  rougify {} ||
	                  cat {}) 2> /dev/null | head -500'

	else
	        fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
	                         echo {} is a binary file ||
	                         (bat --style=numbers --color=always {} ||
	                          highlight -O ansi -l {} ||
	                          coderay {} ||
	                          rougify {} ||
	                          cat {}) 2> /dev/null | head -500'
	fi
}


export PATH=$PATH/.fnm:$PATH