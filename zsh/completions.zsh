# Enable Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/usr/local/dotfiles/.zshrc'
autoload -Uz compinit

ZCOMPDUMP_PATH='/usr/local/dev-data/.zcompdump'

if [ ! -f "$ZCOMPDUMP_PATH" ] || [ -O "$ZCOMPDUMP_PATH" ]; then
  # Only update compinit when the user is the owner of the file.
  compinit -d "$ZCOMPDUMP_PATH"
else
  # Otherwise, just use the dump file. It's more OK to be outdated
  # than insecure.
  compinit -C -d "$ZCOMPDUMP_PATH"
fi

# Zsh-completions path
fpath=(~/zsh-completions/src $fpath)
