source /usr/local/dotfiles/zsh/functions.zsh

# Git world
alias m='gco master'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -D $1'
alias gcm='git commit'
alias gcma='git commit --amend'
alias gd='git diff'
alias gdm='gd master'
alias gst='git st'
alias gco='git checkout'
alias gp='git push'
alias gpm='git push origin master'
alias gpf='git push -f'
alias gpl='git pull'
alias gl='git lg'
alias gsq='git squash'
alias gsqm='gsq master'
alias gplrm='git plr origin master'
alias gaa='ga -A'
alias gag='gaa' # typing gag is faster

alias pr='hub pull-request'
alias rename="gb -m --"
alias pick='git pick'
alias wip="gcm -m WIP"
alias fixup="gcm -m fixup"
alias fixed="gcm -m fixed"
alias cist="hub ci-status"

# Docker
alias drmi='docker rmi $(docker ps -aq --filter dangling=true)'
alias drm='docker rm $(docker ps -aq --filter dangling=true)'

# Editor
alias n='nvim'
alias v='/usr/local/opt/vim/bin/vim'

# Utils
alias mkdir='mkdir -p'
alias ll='ls -la'

# Ruby - Bundle
alias bi='bundle install -j8 --path .bundle'
alias bu='bundle update'
alias be='bundle exec'
alias ber='be rake'
alias rsp='be rspec'
alias bers='be rails server -p 8080'
alias rbtag='ctags -f tags -R . $(bundle list --paths)'

# dotfiles
alias vimrc='vim ~/dotfiles/vimrc'
alias zshrc='vim ~/dotfiles/zshrc'

alias shrug='echo -n "¯\_(ツ)_/¯" | pbcopy'
