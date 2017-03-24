source $HOME/dotfiles/zsh/functions.zsh

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
alias tr='tree -L2'
alias ll='ls -la'
alias gh='open https://github.com/huynhquancam'
alias fb='open https://facebook.com/huynhquancam'
alias tt='open https://twitter.com/huynhquancam'
alias web='open https://hqc.io'
alias resume='open https://hqc.io/rbcv'
alias ?='less ~/dotfiles/zsh/aliases.zsh'

# Ruby - Bundle
alias bi='bundle install -j8 --path .bundle'
alias bu='bundle update'
alias be='bundle exec'
alias ber='be rake'
alias rsp='be rspec'
alias bers='be rails server -p 8080'
alias rbtag='ctags -f tags -R . $(bundle list --paths)'
alias rb='rbenv'
alias rbs='rbenv shell'
alias rbl='rbenv local'

# Node - NPM
alias ni='npm install'
alias nini='npm init'
alias nr='npm run'
alias nt='npm test'
alias ns='npm start'
alias ne='npm-exec'
alias wp='npm-exec webpack'
alias wpdev='npm-exec webpack-dev-server'

# SSH
alias ssh-tun='ssh -N -R'

# Make
alias mk='make'

# dotfiles
alias vimrc='vim ~/dotfiles/vimrc'
alias nvimrc='vim ~/dotfiles/config/nvim/init.vim'
alias zshrc='vim ~/dotfiles/zshrc'

alias shrug='echo -n "¯\_(ツ)_/¯" | pbcopy'
alias key='cat ~/.ssh/id_rsa.pub | pbcopy'
