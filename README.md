# dotfiles

## Macos

```
brew install nvim bat ripgrep lazygit pandoc
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

### link nvim config

```
mv $HOME/.config/nvim $HOME/.config/nvim-bak
ln -s $HOME/dotfiles/.config/nvim $HOME/.config/nvim
```

### neovim tips

Run fzf with `<leader>ff`, then pressing Enter will open in current buffer, `ctrl-v` will open in vert split, `ctrl-s` in horizontal split `ctrl-t` in a new tab
