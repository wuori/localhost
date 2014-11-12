alias atom='open -a Atom'
[[ -s "/Users/mzlcgd/.rvm/scripts/rvm" ]] && source "/Users/mzlcgd/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function parse_git_branch {
git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="🍔  \[\033[01;35m\]\u@\h:\[\033[01;34m\]\$(parse_git_branch) \[\033[01;32m\]\w \[\033[01;34m\]\n>\[\e[0m\]"

alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

complete -o default -o nospace -F _git_branch gb
complete -o default -o nospace -F _git_checkout gc
