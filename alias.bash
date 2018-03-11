# ======= git short cuts ======
alias pull="git pull -r"
alias push="git push"
alias gdi="git diff"
alias gapa='git add --patch'
alias gaa="git add -A"
alias gs="git status"
alias ga="git add"
alias gc="git commit"

# rebase #
alias amend="git commit --amend --reset-author"
alias continue="git rebase --continue"
alias cont="git rebase --continue"
alias skip="git rebase --skip"
alias abort="git rebase --abort"

# ======= tmux ======
alias attach="tmux attach -t"
alias ses="tmux new -s"

# ======= plugins ======
alias vundle="vim +PluginInstall +qall"
alias uvundle="vim +PluginUpdate +qall"

# ======= open ======
alias vimrc="vim ~/.vimrc"
alias als="vim $HOME/workspace/dotfiles/alias.bash"

# ======= general ======
alias rm='rm -i'
alias rmf='rm -irfv'
alias update='upgrade_oh_my_zsh'
alias golang='cd go/src/github.com'
alias goplay='cd go/src/github.com/cclulu/playground'

# fancy ls command
# -l  long format
# -G  colorize
# -h humanize sizes
# -q print nongraphic chars as question marks
alias ll="ls -laGhq"
alias l="ll"

# ======= LOL ======
alias gti="echo 'le beep beep' && echo && echo && gti"

# ======= misspelling ======
alias gingko="ginkgo"
alias vi="vim"
alias vmi="vim"
alias cim="vim"
alias v="vim"
alias psuh="push"
alias gdc="gc"
