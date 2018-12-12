# shellcheck shell=sh

toolset_subsection "Git"

go_get "github.com/github/hub"
pipx_install "legit"

mkdir -p "$XDG_DATA_HOME/tig"
