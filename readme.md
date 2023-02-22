<header>
<img src="https://www.katsuki.moe/favicons/pinned.svg" alt="logo" height="100" align="left">
<h1 style="display: inline">Dottu Desu Ka!</h1>

My dotfiles for my machines to maintain my own development environment.

</header>

[![GitHub top language](https://img.shields.io/github/languages/top/katsuki-yuri/dots?style=flat-square&logo=github)](https://github.com/katsuki-yuri/dots)
[![Channel](https://img.shields.io/badge/Chat-grey?style=flat-square&logo=telegram)](https://t.me/yurionblog)
[![Shellcheck CI](https://github.com/katsuki-yuri/dots/actions/workflows/test.yml/badge.svg)](https://github.com/katsuki-yuri/dots/actions/workflows/test.yml)

## About

In this repository I keep all my configurations and dot files to maintain my healthy development environment for any case. It contains configurations
for shell and environments like zsh (arch-linux, macos), powershell (windows). It comes with installer to shorten my time spending on set up.

> Everytime I installed my dev env manually by myself, I started feeling like a garbage myself... So here you are!

## Features

- Syntax Highlighting
- Auto Completions
- Auto Suggestions
- Rust made replacements
- Key configurations
- Software configurations

## Install (Automatic)

This process can be tough and easy at the same time depending on yourself... If you prefer trusting me and let me do all the dirty stuff, then just run the install script located on the root location of the project like this:

### Linux (MacOS & Arch Linux)

```shell
# I'm not evil, check the source code if you don't trust me!
curl -fsSL https://dottu.katsuki.moe/install.sh | sh
```

### Windows NT

```shell
# Run this if it's your first time opening terminal
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Install configurations
irm https://dottu.katsuki.moe/install.ps1 | iex
```

## Install (Manual)

Just copy-paste configs that you would need. You may use symlinks to prepend to the repository and then update the repo to get the latest changes.

## License

This project is licensed under the MIT License - see the [LICENSE](license) file for details.
