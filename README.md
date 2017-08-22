# ~/.dotfiles

## Setup

First, install [rcm] in order to symlink dotfiles into place.

Debian:
```sh
wget -qO - https://apt.thoughtbot.com/thoughtbot.gpg.key | sudo apt-key add -
echo "deb http://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list
sudo apt-get update
sudo apt-get install rcm
```

openSUSE/RHEL/CentOS:
```sh
cd /etc/yum.repos.d/
sudo wget https://download.opensuse.org/repositories/utilities/RHEL_7/utilities.repo
sudo yum install rcm
```

macOS:
```sh
brew tap thoughtbot/formulae
brew install rcm
```

## Installation

Next, clone this repo down and link the files with `rcup`:

```sh
git clone https://github.com/jlaw/dotfiles "$HOME/.dotfiles"
env RCRC="$HOME/.dotfiles/rcrc" rcup
```

Any additional tags (see below) may now be selected with `rcup -t`:

```sh
rcup -t gui
```

Finally, bootstrap the environment with the `bootstrap` script:

```sh
$HOME/.local/bin/bootstrap
```

## Tags

Additional dotfiles are categorized and selectively linked under tags.
Currently they are:

* `eda` (systems used for EDA)

## License

This project is licensed under the
[MIT](https://en.wikipedia.org/wiki/MIT_License) license.

See LICENSE for more details.


[rcm]: https://github.com/thoughtbot/rcm
