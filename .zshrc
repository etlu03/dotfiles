export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="af-magic"

# set update reminder to every 30 days
zstyle ':omz:update' mode auto frequency 30

# omzsh preferences
DISABLE_MAGIC_FUNCTIONS=true
DISABLE_LS_COLORS=true
ENABLE_CORRECTION=true
COMPLETION_WAITING_DOTS=true

# omzsh plugins
plugins=(
    git
    zsh-autosuggestions
    dirhistory
    sudo
    copyfile
    copybuffer
    jsontools
)

# auto set flags
alias grep="grep --color=auto"
alias ls="ls -F"

# shortcuts
alias c="clear" # [c]lear
alias hc="history -c"  # [h]istory [c]lear
alias la="ls -a" # [l]ist [a]ll

# navigation functions
function ~ { cd "~"; }
function .. { cd ".."; }
function ... { cd "../.."; }
function - { cd "-"; }

# terminal functions
function jkill { kill -9 $(ps wuax | awk 'NR>1 && $8 ~ "T" {print $2}') };

# tmux-specific functions
function tls { tmux ls; }
function new
{
  if [ -z "$1" ]
  then
    tmux new;
  else
    tmux new -s "$1";
  fi
}
function attach
{
  if [ -z "$1" ]
  then
    tmux attach;
  else
    tmux attach -t "$1";
  fi
}
function tkill { pkill -f tmux; }

# git-specific functions
function log { git log; }
function untracked { git status -u; }

function reload { source "$HOME/.zshrc"; }

source $ZSH/oh-my-zsh.sh
