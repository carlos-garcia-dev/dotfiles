# Dotfiles Config

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0002.jpg"
    alt="Vim-002"
    style="witdh: 100%" />

## Introduction

I find that a

## Requirements

- git - Installed
- zsh - Installed and set up:

_Example_:

- Install shell: `brew install zsh`
- Make default shell: `chsh -s $(which zsh)`
- Execute shell: `exec zsh`

---

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0003.jpg" 
    alt="Vim-003"
    style="witdh: 100%" />
<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0000.jpg" 
    alt="Vim-003"
    style="witdh: 100%" />
<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0004.jpg" 
    alt="Vim-003"
    style="witdh: 100%" />

## Assets

These utilities have to be installed manually.

- neovim <!-- Updated version of VIM -->
- oh-my-zsh <!-- Open source framework for managing zsh -->
- fmz <!-- A mininmalist Node Version Manager -->

## Plugins

- bat
- fzf
- lsd
- zsh-autosuggestions
- zsh-syntax

## Customizations

- Fonts:
  [FiraCode Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases#:~:text=8.71%20MB-,FiraCode.zip,-72.9%20MB)
  [FiraMono Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases#:~:text=72.9%20MB-,FiraMono.zip,-28.3%20MB)
- Oh My ZSH custom theme
  [Custom-Nanotech](https://github.com/carlos-garcia-dev/dotfiles/blob/main/.oh-my-zsh/themes/custom-nanotech.zsh-theme)
- Git Configs
- VS Code settings
- Oh My Zsh custom

---

## Installation

Installation it is based on the creations of symlinks.
The way for creating those is:

```sh
  ln -s <route> <archive>
```

_Vim files_ are stored in a `configs` folder for better encapsulation and a cleaner storage. That folder has to be in the `~/configs` route. The needed commands before you copy the Vim files are:

```sh
  ln -s configs/.vim   .vim
  ln -s configs/.vimrc .vimrc
  ln -s configs/.zshrc .zshrc
```

The result afer en has to be something like this.

```sh
  USER group 12 B Sun Apr 24 02:34:51 2022  .vim ⇒ configs/.vim
  USER group 14 B Sun Apr 24 02:22:42 2022  .vimrc ⇒ configs/.vimrc
  USER group 14 B Sat Apr 23 22:00:37 2022  .zshrc ⇒ configs/.zshrc
```

The rest of the folders and archives have to be stored in the default route of the corresponding plugin or program.

**Example**:

File: `custom-nanotech.zsh-theme`

```sh
  ~/.oh-my-zsh/custom/themes/custom-nanotech.zsh-theme
```

The installation of the _plugins_ have to be done manually. If not, the `.zshrc` function will not find the correct sources.

## Packages

### BAT

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0003.jpg"
    alt="Vim-003"
    style="witdh: 100%" />

```sh
  brew install bat
```

### FZF

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0001.jpg"
    alt="Vim-001"
    style="witdh: 100%" />


```sh
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

#### Preview mode of FZF

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0004.jpg"
    alt="Vim-001"
    style="witdh: 100%" />

### LSD

```sh
  brew install lsd
```

### ZSH-\*

```sh
  brew install zsh zsh-autosuggestions zsh-completions
```

---

## Resources

These are some dotfiles that served as inspiration for the creation of my own. A special mention has to be done of the [nschurmann](https://github.com/nschurmann/configs) files which served as a deep source of inspiration for a minimalistic approach.

- [rgomezcasas](https://github.com/rgomezcasas/dotfiles)
- [mcornella](https://github.com/mcornella/dotfiles)
- [carlosala](https://github.com/carlosala/dotfiles)
