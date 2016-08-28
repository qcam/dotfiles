source $HOME/dotfiles/zsh/languages.zsh
source $HOME/dotfiles/zsh/completions.zsh
source $HOME/dotfiles/zsh/colors.zsh
source $HOME/dotfiles/zsh/prompts.zsh
source $HOME/dotfiles/zsh/hooks.zsh
source $HOME/dotfiles/zsh/editor.zsh
source $HOME/dotfiles/zsh/paths.zsh
source $HOME/dotfiles/zsh/aliases.zsh
source /usr/local/share/zsh/site-functions/_aws
source $HOME/dotfiles/zsh/rbenv.zsh

# Source for ~/.zshrc.local if it exists
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
[[ -f ~/.aliases.local ]] && source ~/.aliases.local

