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

export TERM=xterm

# Export paths
export PATH="$GEM_HOME/bin:$HOME/.rvm/bin:$PATH"
export PATH="$PATH:$HOME/.bin"
export PATH="$PATH:/usr/local/bin"
export PATH="$PATH:/usr/local/lib/node_modules"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"

source $(brew --prefix nvm)/nvm.sh
source $HOME/dotfiles/zsh/aliases

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
