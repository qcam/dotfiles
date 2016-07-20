Cam Huynh's dotfiles
========

My terminal configurations

### Installation

```sh
git clone https://github.com/huynhquancam/dotfiles.git ~/dotfiles
cd ~/dotfiles
./bootstrap
```

### Prerequisites

* `vim-plug` for vim plugin managers
* Support NeoVIM + VIM
* Tmux 2.2+ (with terminal-override support)
* NeoVim 0.1.15+ (with termguicolors support)
* VIM 7.4+ (with termguicolors support)

### Plugins

#### `checklist`

Bash / ZSH

```sh
checklist today # alias: today
# /Users/hqc/Dropbox/Notes/Todos/checklist-2016-07-20.md

checklist yesterday # alias ytd
# /Users/hqc/Dropbox/Notes/Todos/checklist-2016-07-19.md
```

VIM

```viml
:TD
:YTD
:call TodayNotes()
:call YesterdayNotes()
```

View more at [checklist](bin/checklist) and [notes.vim](vim/plugin/notes.vim)
