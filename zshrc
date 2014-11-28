# Set up Language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Add RVM to PATH
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.bin:$PATH"
export PATH="/usr/local/bin:$PATH"

# Import colors
autoload -U colors && colors

setopt PROMPT_SUBST

# parse current Git branch
parse_git_branch() { git branch 2> /dev/null | sed -e "/^[^*]/d" -e "s/* \(.*\)/\1/"; }

# set prompts
export PS1="%{$fg[red]%}%n%{$reset_color%} %{$fg[yellow]%}%~ %{$reset_color%}%% "
export RPS1="%{$fg[green]%}\$(parse_git_branch)%{$reset_color%}"

# Python VirtualEnv path
export VIRTUAL_ENV='~/.virtualenvs'

# VirtualEnvWrapper
source /usr/local/bin/virtualenvwrapper.sh

# Set VIM as my default editor
export EDITOR='vim'

# Zsh-completions path
fpath=(~/zsh-completions/src $fpath)

export PATH="$PATH:/usr/local/lib/node_modules"
# source $(brew --prefix nvm)/nvm.sh

export TERM=xterm

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/Users/jahuang/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# The next line updates PATH for the Google Cloud SDK.
# source '/Users/jahuang/google-cloud-sdk/path.zsh.inc'

# The next line enables bash completion for gcloud.
# source '/Users/jahuang/google-cloud-sdk/completion.zsh.inc'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

