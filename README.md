# dotfiles

## Macos

```
brew install nvim bat ripgrep lazygit pandoc yaml-language-server helm-ls
```

### Setup fonts

```
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Terminus.zip
```

Blocky and most importantly supports Russian symbols

### setup zettel repo

```
cd ~
git clone git@github.com:VitaliSarayeu/zettel.git
```

### enable treesitter compilation for all langs syntax highlight

```
brew install gcc

export CC=gcc-14
```

### link nvim config

```
mv $HOME/.config/nvim $HOME/.config/nvim-bak
ln -s $HOME/dotfiles/.config/nvim $HOME/.config/nvim
```

### neovim tips

Run fzf with `<leader>ff`, then pressing Enter will open in current buffer, `ctrl-v` will open in vert split, `ctrl-s` in horizontal split `ctrl-t` in a new tab

