## Prerequisites

* python3
* python-neovim (For neovim)
* global

## Setup

```shell
$ ln -s $(pwd)/plug.vim/plug.vim ~/.local/share/nvim/site/autoload/.
$ ln -s $(pwd)/init.vim ~/.config/nvim/.
```

At the first time launching nvim, run the 
```
!PlugInstall
```

Then restart the nvim
