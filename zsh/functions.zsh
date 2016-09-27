function npm-exec() {
  $(npm bin)/$@
}

function mysql-import-bz2 {
  bunzip2 < $1 | mysql -u $2 $3
}
