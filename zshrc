# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load
ZSH_THEME="intheloop"

# Enable command auto-correction.
ENABLE_CORRECTION="true"

# List plugins to load
plugins=(vi-mode history-substring-search)

source $ZSH/oh-my-zsh.sh

# Set preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Aliases
alias py3="python3"
alias ipy="~/anaconda3/bin/ipython"
alias update_pip="pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
alias update_pip2="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip2 install -U"
alias emc="emacsclient"

export LC_ALL=en_US.UTF-8
export PATH="/usr/local/sbin:$PATH"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/alexander/.sdkman"
[[ -s "/Users/alexander/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/alexander/.sdkman/bin/sdkman-init.sh"
