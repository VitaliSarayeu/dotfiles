# dotfiles

## Macos

```
brew install nvim bat ripgrep lazygit
```



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
