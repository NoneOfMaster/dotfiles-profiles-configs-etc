# Prompt
# ======================

  # output active git branch
  function parse_git_branch {
    git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
  }

  # ♥ prompt and colors of the Flatiron School
  function prompt {
    local RED="\[\033[0;31m\]"
    local CHAR="♥"
    local BLUE="\[\e[0;49;34m\]"

    export PS1="\[\e]2;\u@\h\a[\[\e[37;44;1m\]\t\[\e[0m\]]$RED\$(parse_git_branch) \[\e[32m\]\W\[\e[0m\]\n\[\e[0;31m\]$BLUE//$RED $CHAR \[\e[0m\]"
      PS2='> '
      PS4='+ '
  }

  prompt

# Environment Variables
# ===================== 

  # Library Paths

    export NODE_PATH="/usr/local/lib/node_modules:$NODE_PATH"

  # Configurations

    export GIT_MERGE_AUTOEDIT='no'

    # Editors
    export VISUAL="code -w"
    export SVN_EDITOR="code -w"
    export GIT_EDITOR="code -w"
    export EDITOR="code -w"

  # Paths

    export USR_PATHS="/usr/local:/usr/local/bin:/usr/local/sbin:/usr/bin"
    export PATH="$USR_PATHS:$PATH"

# Functions
# =====================

# `desktop` or `desktop someSubfolder`
function desktop {
  cd /Users/$USER/Desktop/$@
}

# grep for matching process `psg someProcess`
function psg {
  FIRST=`echo $1 | sed -e 's/^\(.\).*/\1/'`
  REST=`echo $1 | sed -e 's/^.\(.*\)/\1/'`
  ps aux | grep "[$FIRST]$REST"
}

# `extract imazip.zip`
function extract () {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)  tar xjf $1      ;;
            *.tar.gz)   tar xzf $1      ;;
            *.bz2)      bunzip2 $1      ;;
            *.rar)      rar x $1        ;;
            *.gz)       gunzip $1       ;;
            *.tar)      tar xf $1       ;;
            *.tbz2)     tar xjf $1      ;;
            *.tgz)      tar xzf $1      ;;
            *.zip)      unzip $1        ;;
            *.Z)        uncompress $1   ;;
            *)          echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# Aliases
# =====================

  # LS
  alias ll='ls -lah'
  alias l="ls -l"

  # Git
  alias gcl="git clone"
  alias gst="git status"
  alias gl="git pull"
  alias gp="git push"
  alias gd="git diff | mate"
  alias gc="git commit -v"
  alias gca="git commit -v -a"
  alias gb="git branch"
  alias gba="git branch -a"
  alias gcam="git commit -am"
  alias gbb="git branch -b"

# Case-Insensitive Auto Completion
  bind "set completion-ignore-case on"

# Final Configurations and Plugins
# =====================

  # activate bash git completion if installed via homebrew
  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi

  # NVM
  export NVM_DIR=~/.nvm
  source $(brew --prefix nvm)/nvm.sh

  [ -f ~/.fzf.bash ] && source ~/.fzf.bash

  # RVM 
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
  # mandatory loading of RVM into the shell
  # must be the last line of bash_profile
  export PATH="$HOME/.cargo/bin:$PATH"
