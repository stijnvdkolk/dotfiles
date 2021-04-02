# Global Variables
export EDITOR='micro'
export TERMINAL="alacritty"
export BROWSER="firefox"
export SSH_KEY_PATH="~/.ssh/id_rsa"
export ZSH_PLUGINS_ALIAS_TIPS_EXCLUDES="g"

# Local Variables
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
AUTO_LS_COMMANDS=(ls)

export GPG_TTY=$(tty)

source ~/.zplug/init.zsh
source ~/.dotfiles/scripts/aliases.sh
source ~/.dotfiles/scripts/path.sh
source ~/.dotfiles/scripts/nvm.sh

# Plugins
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "desyncr/auto-ls"
zplug "djui/alias-tips"

if ! zplug check --verbose; then
    zplug install
fi

zplug load

# keybindings
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char

# zstyle configs
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

eval "$(starship init zsh)"
