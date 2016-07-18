# Enable Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# Zsh-completions path
fpath=(~/zsh-completions/src $fpath)
