# Path to oh-my-zsh installation
	export ZSH="/Users/rtepper/.oh-my-zsh"
 
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

	function desktop {
		cd /Users/$USER/Desktop/$@
	}

	function repos {
		cd /Users/$USER/Desktop/repos/$@
	}

# Env Vars
	export GIT_EDITOR="code -w"
	export EDITOR="code -w"

# Aliases
	# overrides
	alias vim="nvim"
	alias v="nvim"
	
	# config shortcuts
	alias zshconfig="v ~/.zshrc"
	alias nvimconfig="v ~/.config/nvim/init.vim"

	# ls
	alias ll="ls -lah" # long, all, human-readable 
	alias l="ls -a"

	# applications
	alias o="open ."

	# nav
	alias ..="cd .."
	alias h="cd -" 

	# builtins, misc
	alias grep="grep --color=auto"
	alias mkdir="mkdir -pv" # parents, verbose

	# https://github.com/sindresorhus/trash-cli
	alias rm='echo "rm alias (/bin/rm) disabled: use trash"'

	# git
	# edit and/or confirm list of local branches tracking merged remote branches and delete
	alias gtrim='git branch --merged | grep -v "master" >/tmp/merged-branches && vi /tmp/merged-branches && xargs git branch -d </tmp/merged-branches'
	
	# ember
	alias et="z canvas; ember t -s --no-launch"	
	alias devCanvas="repos; itermocil devCanvas --here"
	alias devFramework="repos; itermocil devFramework --here"

# PATH
	export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

	export VOLTA_HOME="$HOME/.volta"
	export PATH="$VOLTA_HOME/bin:$PATH"

	export PATH="$PATH:$HOME/.rvm/bin" # RVM must be the last PATH variable change

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
if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

### End of Zinit's installer chunk

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh