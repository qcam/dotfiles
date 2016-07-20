fun! TodayNote()
  :e `checklist today`
endf

fun! YesterdayNote()
  :e `checklist yesterday`
endf

:command -nargs=0 TD :call TodayNote()
:command -nargs=0 YTD :call YesterdayNote()
