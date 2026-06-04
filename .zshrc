for f in $(find $HOME/.zsh -type f -name "*.zsh"); do
	source "$f"
done
