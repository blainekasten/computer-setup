# computer-setup

## Installs

1. [Install brew](https://brew.sh/)
1. [Install zsh](https://github.com/robbyrussell/oh-my-zsh#via-curl)
1. [Install `n`](https://github.com/tj/n)
1. Install tmux `brew install tmux`
1. Install reattachment `brew install reattach-to-user-namespace` (lets tmux work)
1. [Install vundle](https://github.com/VundleVim/Vundle.vim#quick-start)
    1. Make sure to install the plugins (`:PluginInstall` in vim).
1. [Install neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim#homebrew-macos--linuxbrew-linux)
1. [Install yarn](https://yarnpkg.com/en/docs/install)

## Configuration

1. Setup [`.zshrc`](/.zshrc)
1. Setup [`.tmux.conf`](/.tmux.conf)
1. Setup [`.vimrc`](/.vimrc)
1. Setup [`neovim`](/neovim.md)

## Other

1. Set terminal preference profile default to "Pro".
1. Make finder killable `defaults write com.apple.finder QuitMenuItem -bool YES`
