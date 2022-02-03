export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/localadmin/bin:~/bin
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Path to your oh-my-zsh installation.
export ZSH=/Users/cuahuctemocosorio/.oh-my-zsh

export EDITOR=vim

# ZSH_THEME="pygmalion"
ZSH_THEME=powerlevel10k/powerlevel10k

# User configuration
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# setup GO
export GOPATH="$HOME/go"
# export GO="/usr/local/Cellar/go/1.13.8"
export GOVERSION="$(brew info go | cut -d' ' -f 3 | head -n 1)"
export GO="/usr/local/Cellar/go/${GOVERSION}"

export GOROOT="$GO/libexec"
export PATH=$GO/bin:$GOPATH/bin:$PATH

export PATH=$HOME/bin:$PATH

export EVENT_NOKQUEUE=1

# rupa/z - jump around
. ~/z/z.sh

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_profile

#load up all them aliases
source $HOME/workspace/dotfiles/alias.bash

# load rbenv
eval "$(rbenv init -)"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

eval "$(direnv hook zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
export PATH="/usr/local/sbin:$PATH"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
fi
