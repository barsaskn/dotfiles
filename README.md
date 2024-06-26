# Dotfiles

This repository contains my personal dotfiles managed by [chezmoi](https://www.chezmoi.io).

## Prerequisites

Before you start, ensure you have the following installed:

- [chezmoi](https://www.chezmoi.io/docs/install/)
- [zsh](https://www.zsh.org)
- [neovim](https://neovim.io)
- [zellij](https://zellij.dev)
- [bat](https://github.com/sharkdp/bat)
- [fastfetch](https://github.com/fastfetch-cli/fastfetch)
- [eza](https://github.com/eza-community/eza)
- [alacritty](https://alacritty.org)

## Installation

1. **Initialize chezmoi:**

    ```sh
    chezmoi init https://github.com/barsaskn/dotfiles
    ```

2. **Apply the dotfiles:**

    ```sh
    chezmoi apply -v
    ```
