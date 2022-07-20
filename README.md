# myvim

Vim config for javascript developer

# NeoVim
```~/.config/nvim/coc-settings.json```

```~/.config/nvim/init.vim```

## How to setup neovim

1, brew install neovim

2, Install vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
       
3, Create file ~/.config/nvim => chmod 755  ~/.config/nvim 

4, Create file ~/.config/nvim/init.vim

5, Open init.vim file => :PlugInstall

6, How to install fzf

7, plugins=(... fzf) => zshrc file

8, export FZF_BASE=/path/to/fzf/install/dir (https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/fzf)

==== PROBLEM ===

1, fzf not working on nvim 
=> FZF_DEFAULT_COMMAND


