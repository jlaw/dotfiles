set -q fish_initialized; and exit

#
# core
#

# fish
set -U fish_greeting

# editor
set -Ux VISUAL nvim
set -Ux EDITOR $VISUAL

# pager
set -Ux PAGER less
set -Ux LESS '--RAW-CONTROL-CHARS --tabs=2'
set -Ux LESSHISTFILE $XDG_CACHE_HOME/lesshist

#
# tools
#

# (n)vim
set -Ux VIM_CONFIG_PATH $XDG_CONFIG_HOME/nvim

# ccache
set -Ux CCACHE_DIR $XDG_CACHE_HOME/ccache

#
# fzf
#

# core
set -Ux FZF_DEFAULT_COMMAND 'fd --type file --type symlink'

# plugin (commands)
set -U FZF_OPEN_COMMAND $FZF_DEFAULT_COMMAND
set -U FZF_FIND_FILE_COMMAND $FZF_DEFAULT_COMMAND
set -U FZF_CD_COMMAND 'fd --type directory --follow'
set -U FZF_CD_WITH_HIDDEN_COMMAND 'fd --type directory --follow --hidden --exclude .git'

# plugin (preview)
set -U FZF_ENABLE_OPEN_PREVIEW 1
set -U FZF_PREVIEW_FILE_COMMAND 'head -n 10'
set -U FZF_PREVIEW_DIR_COMMAND 'ls'

# local
set -U FZF_BASE_OPTS "--no-bold"
