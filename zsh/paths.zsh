# Export paths
export GOPATH="/Users/huynhquancam/workspace/go"
export PATH="$PATH:$HOME/.bin:$GOPATH/bin"
export PATH="$PATH:/usr/local/bin:/usr/local/sbin"
export PATH="$PATH:/usr/local/lib/node_modules"
export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin"
export PATH="$PATH:$HOME/dotfiles/bin/"
export NOTES_PATH="$HOME/Dropbox/Notes"
export WORQUE_PATH="$NOTES_PATH/Todos"

source $(brew --prefix nvm)/nvm.sh
# Include Python VirtualEnv & VirtualEnvWrapper
if [ -f ~/.virtualenvs ];
then
  export VIRTUAL_ENV='~/.virtualenvs'
  source /usr/local/bin/virtualenvwrapper.sh
fi

