# Git aliases
alias g='git'
alias ga='git add'
alias gs='git status'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gp='git push'
alias gr='git restore'
alias gf='git fetch -p'
alias gco='git checkout'
alias glo="git log --date=short --color --graph --pretty=format:'%Cgreen[%Creset%h%Cgreen]%Creset -%C(yellow)%d%Creset %s %Cgreen(%cd) %C(bold blue)%Creset' --abbrev-commit"
alias glc='git log --oneline | wc -l'

# File listing
alias ls='ls --color=auto --group-directories-first'
alias la='ls -A'
alias l='ls -la'
alias cdd='cd ..'

# Trash
alias tgrep='trash-list | grep'

# Verbose copying
alias cp='cp -iv'

# Open file
alias open='xdg-open'

# Superuser alias workaround
alias sudo='sudo '

# Node, yarn & npm
alias pscripts='jq .scripts package.json'