<div align="center">
    <a href="https://www.ironhack.com/">
        <img 
            alt="Terminal"
            width="150px"
            src="https://github.com/carlos-garcia-dev/carlos-garcia-dev-images/blob/master/images/png/20.Terminal.png" />
    </a>
</div>
<div align="center">
  <h1>Dotfiles</h1>
  <strong>Configuration for a minimalistic and effictient Terminal</strong>
</div>

</br>

## Introduction

Terminal based in `Vim` text editor to navigate through files in a quick and efficient way.
I made this configuration because I found much more powerful to use Vim instead of `Nano` or `Pico`,
It is possible to navigate and edit files in the console without using an IDE:`v` and `Space + N + T` to open Nerd-Tree.
There are custom configurations such as: tools or packages. Also, there is a configuration for aliases at `.zshrc`.

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0002.jpg"
    alt="Vim-002"
    style="witdh: 100%" />

## Requirements

- brew - `Installed`
- git - `Installed`
- zsh - `Installed and set up`

_Example_:

- Install ZSH shell: `brew install zsh`
- Make default shell: `chsh -s $(which zsh)`
- Execute shell: `exec zsh`

---

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0003.jpg" 
    alt="Vim-003"
    style="witdh: 100%" />

</br>

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0001.jpg" 
    alt="Vim-001"
    style="witdh: 100%; padding-top: 5px" />

## Assets

These utilities have to be installed manually:

1. [NeoVim](https://neovim.io/)
2. [Oh-My-ZSH](https://github.com/ohmyzsh/ohmyzsh)
3. [FNM](https://github.com/Schniz/fnm)

## Plugins

bat | fzf | lsd | zsh-autosuggestions | zsh-syntax

## Customizations

- Fonts:
  - [FiraCode Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases#:~:text=8.71%20MB-,FiraCode.zip,-72.9%20MB)
  - [FiraMono Nerd Fonts](https://github.com/ryanoasis/nerd-fonts/releases#:~:text=72.9%20MB-,FiraMono.zip,-28.3%20MB)
- Oh My ZSH theme: [Custom-Nanotech](https://github.com/carlos-garcia-dev/dotfiles/blob/main/.oh-my-zsh/themes/custom-nanotech.zsh-theme)
- Git Configs
- VS Code settings
- Oh My Zsh custom

---

## Installation

Installation it is based on the creation of `symlinks`.
The way for creating those is:

```sh
  ln -s <route> <archive>
```

_Vim files_ are stored in a `configs` folder for better encapsulation and a cleaner storage.
That folder has to be in the `~/configs` route.
The needed commands before you copy the Vim files are:

```sh
  ln -s configs/.vim   .vim
  ln -s configs/.vimrc .vimrc
  ln -s configs/.zshrc .zshrc
```

The result afer en has to be something like this.

```sh
  USER group 12 B Sun Apr 24 02:34:51 2022 .vim ⇒ configs/.vim
  USER group 14 B Sun Apr 24 02:22:42 2022 .vimrc ⇒ configs/.vimrc
  USER group 14 B Sat Apr 23 22:00:37 2022 .zshrc ⇒ configs/.zshrc
```

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0005.jpg"
    alt="Vim-005" />

The rest of the folders and archives have to be stored in the default route of the corresponding plugin or program.

**Example**:

File: `custom-nanotech.zsh-theme`

```sh
  ~/.oh-my-zsh/custom/themes/custom-nanotech.zsh-theme
```

> **IMPORTANT:** The installation of the _plugins_ have to be done manually.
> If not, the `.zshrc` function will not find the correct sources.

## Packages

### BAT

App for icon view in the console. `CAT` with steroids

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0006.jpg"
    alt="Vim-006"/>

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0004.jpg"
    alt="Vim-004"
    style="witdh: 100%" />

```sh
  brew install bat
```

### FZF

Multi-purpouse tool for search archives quick

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0000.jpg"
    alt="Vim-000"
    style="witdh: 100%" />

```sh
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

### LSD

Color configuration for different types of archives or privileges in terminal

<img
    src="https://github.com/carlos-garcia-dev/dotfiles-images/blob/main/Vim-Screenshot_0005.jpg"
    alt="Vim-005" />

```sh
  brew install lsd
```

### ZSH-\*

Tools for making more accessible console

```sh
  brew install zsh zsh-autosuggestions zsh-completions
```

---

## Resources

These are some dotfiles that served as inspiration for the creation of my own. A special mention has to be done of the [nschurmann](https://github.com/nschurmann/configs) files which served as a deep source of inspiration for a minimalistic approach.

Additional examples:

- [rgomezcasas](https://github.com/rgomezcasas/dotfiles)
- [mcornella](https://github.com/mcornella/dotfiles)
- [carlosala](https://github.com/carlosala/dotfiles)
