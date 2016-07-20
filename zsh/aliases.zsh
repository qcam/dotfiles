source $HOME/dotfiles/zsh/functions.zsh

# Git
alias ga='git add .'
alias gb='git branch'
alias gbd='git branch -D $1'
alias gcm='git commit'
alias gst='git status'
alias gco='git checkout'
alias gp='git push'
alias gpu='git pull'
alias gfn='git finish'
alias gl='git lg'
alias pr='hub pull-request'

# Docker
alias drmi='docker rmi $(docker ps -aq --filter dangling=true)'
alias drm='docker rm $(docker ps -aq --filter dangling=true)'

# Editor
alias n='nvim'
alias v='/usr/local/opt/vim/bin/vim'

# Utils
alias mkdir='mkdir -p'
alias tr='tree -L2'
alias cpkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias ll='ls -la'
alias gh='open https://github.com/huynhquancam'
alias fb='open https://facebook.com/huynhquancam'
alias tt='open https://twitter.com/huynhquancam'
alias web='open https://hqc.io'
alias resume='open https://hqc.io/rbcv'
alias ?='more -l bash ~/dotfiles/zsh/aliases.zsh'
alias today="vim `worque --today` +':cd $WORQUE_PATH'"
alias ytd="vim `worque --yesterday` +':cd $WORQUE_PATH'"

# Ruby - Bundle
alias bi='bundle install -j8 --path .bundle'
alias bu='bundle update'
alias be='bundle exec'
alias ber='be rake'
alias bes='be rspec'
alias bers='be rails server -p 8080'
alias rbtag='ctags -R . $(bundle list --paths)'
alias rb='rbenv'
alias rbs='rbenv shell'
alias rbl='rbenv local'
alias rbrh='rbenv rehash'

# Node - NPM
alias ni='npm install'
alias nini='npm init'
alias nr='npm run'
alias nt='npm test'
alias ns='npm start'
alias ne='npm-exec'
alias wp='npm-exec webpack'
alias wpdev='npm-exec webpack-dev-server'

# Make
alias mk='make'

# dotfiles
alias vimrc='vim ~/dotfiles/vimrc'
alias nvimrc='vim ~/dotfiles/config/nvim/init.vim'
alias zshrc='vim ~/dotfiles/zshrc'

