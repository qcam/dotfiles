# Set up Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Enable Completion
zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
compinit

# Import colors
autoload -U colors && colors

setopt PROMPT_SUBST

# Parse current Git branch
parse_git_branch() { git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"; }

# Set prompts
export PS1="%{$fg[red]%}%n%{$reset_color%} %{$fg[yellow]%}%~ %{$reset_color%}%% "
export RPS1="%{$fg[green]%}\$(parse_git_branch)%{$reset_color%}"

# Include Python VirtualEnv & VirtualEnvWrapper
if [ -f ~/.virtualenvs ];
then
  export VIRTUAL_ENV='~/.virtualenvs'
  source /usr/local/bin/virtualenvwrapper.sh
fi

chpwd() { ls -lrthG }

# Set VIM as my default editor
export EDITOR='vim'

# Zsh-completions path
fpath=(~/zsh-completions/src $fpath)

export TERM=xterm-256color

# Export paths
export GOPATH="/Users/huynhquancam/workspace/go"
export PATH="$PATH:$HOME/.bin:$GOPATH/bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/lib/node_modules"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

source $(brew --prefix nvm)/nvm.sh
source $HOME/dotfiles/zsh/aliases
source /usr/local/share/zsh/site-functions/_aws

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
