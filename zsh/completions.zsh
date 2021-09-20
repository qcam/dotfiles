# Enable Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/usr/local/dotfiles/.zshrc'

# Zsh-completions path
fpath=(~/zsh-completions/src $fpath)
fpath=(${ASDF_DIR}/completions $fpath)

gh completion -s zsh > ${ASDF_DIR}/_gh

autoload -Uz compinit
compinit -i
