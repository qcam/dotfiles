autocmd BufNewFile,BufRead *.ex,*.exs set ft=elixir
autocmd BufNewFile,BufRead *.exs compiler exunit
