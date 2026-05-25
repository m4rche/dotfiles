HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=1000
setopt -o sharehistory

if [[ -e $HOME/.zsh/alias.zsh ]]; then
    source $HOME/.zsh/alias.zsh
fi

if [[ -e $HOME/.zsh/prompt.zsh ]]; then
    source $HOME/.zsh/prompt.zsh
fi

if [[ -e $HOME/.zsh/ls-colors.zsh ]]; then
    source $HOME/.zsh/ls-colors.zsh
fi

if [[ -d $HOME/.zsh/plugins ]]; then
    for plugin in $HOME/.zsh/plugins/*; do
        if [[ -f $plugin ]]; then
            source "$plugin"
        fi
    done
fi
