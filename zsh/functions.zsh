function git-tag-elixir() {
  git commit -m "Release ${1}" && git tag -a $1 -m "Release ${1}"
}

function use-ex() {
  OTP=$1
  ELIXIR=$2

  if [ -z "$OTP" ] || [ -z "$ELIXIR" ]
  then
    echo -e "Usage: use-ex [OTP_VERSION] [ELIXIR_VERSION]"
  else
    OTP_PATH="/Users/cam/otp/$OTP"

    if [ -d "$OTP_PATH" ]; then
      . $OTP_PATH/activate

      source $HOME/.kiex/scripts/kiex
      kiex use $ELIXIR
    else
      echo -e "$OTP is not installed"
    fi
  fi
}

function use-rb() {
  RUBY_VERSION=$1

  if [ -z "$RUBY_VERSION" ]
  then
    echo -e "Usage: use-rb [RUBY_VERSION]."
  else
    eval "$(rbenv init -)" && rbenv shell $RUBY_VERSION
  fi
}
