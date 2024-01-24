# DOTFILES

## Instructions

This is my personal dotfiles backup in order to be able to easily replicate my
desktop configuration. If you want to do the same thing, here are some easy
steps.

### Setup

To setup the backup of your dotfiles :

```sh
git init --bare ~/.dotfiles
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config config status.showUntrackedFiles no
config remote add origin git@github.com:<git-username>/dotfiles.git
```

>The second command can be written into your `.bashrc` or `.zshrc` and the last one suppose that you already created a `dotfiles` repository on your Github profile.

### Replication

To replicate your configuration :

```sh
alias config='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
git clone --bare <git-repo-url> ~/.dotfiles
config checkout
config config status.showUntrackedFiles no
```

### Manage files

To manage your dotfiles :

```sh
config status
config add <file>
config commit -m <message>
config push
```

## Content

### Neovim

My neovim configuration is made from a [LazyVim](https://github.com/LazyVim/LazyVim) starter.

## Credits

My BSPWM config comes from [Rxyhn](https://github.com/rxyhn/)'s tokyo project.
If you want to check this out you can follow [this
link](https://github.com/rxyhn/tokyo) to get more information
as well as an easy step-by-step install guide.

My vim config was inspired by [Chewie](https://github.com/Chewie/dotfiles)'s
one. 
