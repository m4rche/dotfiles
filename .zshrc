# Use powerline
USE_POWERLINE="true"
# Has weird character width
# Example:
#    is not a diamond
HAS_WIDECHARS="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

if [[ -e $HOME/.zsh/alias.zsh ]]; then
    source $HOME/.zsh/alias.zsh
fi

if [[ -d $HOME/.zsh/plugins ]]; then
    for plugin in $HOME/.zsh/plugins/*; do
        if [[ -f $plugin ]]; then
            source "$plugin"
        fi
    done
fi

if [[ -d $HOME/.zsh/functions ]]; then
    fpath=( $HOME/.zsh/functions "$fpath[@]")
    for func in $HOME/.zsh/functions/*; do
        if [[ -f $func ]]; then
            autoload -Uz "$func"
        fi
    done
fi
