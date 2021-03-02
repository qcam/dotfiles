DIR=/usr/local/dotfiles

source $DIR/zsh/languages.zsh
source $DIR/zsh/completions.zsh
source $DIR/zsh/functions.zsh
source $DIR/zsh/colors.zsh
source $DIR/zsh/prompts.zsh
source $DIR/zsh/hooks.zsh
source $DIR/zsh/editor.zsh
source $DIR/zsh/paths.zsh
source $DIR/zsh/aliases.zsh

[[ -f $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
[[ -f $HOME/.aliases.local ]] && source $HOME/.aliases.local

[ -f $HOME/.fzf.zsh ] && source $HOME/.fzf.zsh
