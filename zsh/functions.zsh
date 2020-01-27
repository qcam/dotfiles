function npm-exec() {
  $(npm bin)/$@
}

function mysql-import-bz2 {
  bunzip2 < $1 | mysql -u $2 $3
}

function git-tag-elixir() {
  git commit -m "Release ${1}" && git tag -a $1 -m "Release ${1}"
}
