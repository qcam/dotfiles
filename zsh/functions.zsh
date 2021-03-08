function git-tag() {
  git commit -m "Release ${1}" && git tag -a $1 -m "Release ${1}"
}
