# Path to oh-my-zsh installation
	export ZSH="/Users/$USER/.oh-my-zsh"
 
# Theme
	ZSH_THEME="robbyrussell"
	# ZSH_THEME="random"
	# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Completion
	CASE_SENSITIVE="false"
	HYPHEN_INSENSITIVE="true"

# Update
	DISABLE_UPDATE_PROMPT="false"
	export UPDATE_ZSH_DAYS=14

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
	# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Would you like to use another custom folder than $ZSH/custom?
	# ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
	plugins=(
		git
		z
	)

source $ZSH/oh-my-zsh.sh

## User Settings

# Functions 
	function c {
		if [[ $# -eq 0 ]]
			then
				code .
			else
				code $@
		fi
	}

	function zc {
		z $@
		c
		cd -
	}

	function desktop {
		cd /Users/$USER/Desktop/$@
	}

	function repos {
		cd /Users/$USER/Documents/repos/$@
	}

# Env Vars
	export GIT_EDITOR="code -w"
	export EDITOR="code -w"
	export NODE_ENV="development"

# Aliases
	# overrides
	alias vim="nvim"
	alias v="nvim"
	
	# config shortcuts
	alias zshconfig="v ~/.zshrc"
	alias nvimconfig="v ~/.config/nvim/init.vim"

	# applications
	alias o="open ."

	# nav
	alias ..="cd .."
	alias h="cd -" 

	# builtins
	alias ll="ls -lah" # long, all, human-readable 
	alias l="ls -a"
	alias grep="grep --color=auto"
	alias mkdir="mkdir -pv" # parents, verbose
	# https://github.com/sindresorhus/trash-cli
	alias rm='echo "rm alias (/bin/rm) disabled: use trash"'

	# misc
	alias k="kubectl"

	# git
	# edit and/or confirm list of local branches tracking merged remote branches and delete
	alias gtrim='git branch --merged | grep -v "master" >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches'
	
	# MI
	alias devMI="repos; itermocil MI --here"
	alias devPackaging="devMI; itermocil MIPackaging --here"
	alias devPreviewing="devPackaging; itermocil MIPreviewing --here"

# PATH
	export PATH="/usr/local/bin:$PATH"

	export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Vim Mode
	bindkey -v

	function zle-line-init zle-keymap-select {
		VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
		RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/}"
		zle reset-prompt
	}

	zle -N zle-line-init
	zle -N zle-keymap-select
	
	# override default 0.4-second lag between <ESC> and mode change
	export KEYTIMEOUT=1

### Added by Zinit's installer
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

export PATH="/Users/$USER/Library/Python/3.9/bin:$PATH"

export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source <(fzf --zsh)

. /opt/homebrew/opt/asdf/libexec/asdf.sh