export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode reminder

DISABLE_MAGIC_FUNCTIONS="true"

DISABLE_LS_COLORS="true"

ENABLE_CORRECTION="true"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
