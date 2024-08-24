<p align="center">
    <img src=".github/assets/header.png" alt="Orzklv's {Windows}">
</p>

<p align="center">
    <h3 align="center">Personal dotfiles for my Windows 10/11 machines.</h3>
</p>

<p align="center">
    <img align="center" src="https://img.shields.io/github/languages/top/orzklv/win?style=flat&logo=nixos&logoColor=ffffff&labelColor=242424&color=242424" alt="Top Used Language">
    <a href="https://t.me/orzklvb"><img align="center" src="https://img.shields.io/badge/Chat-grey?style=flat&logo=telegram&logoColor=ffffff&labelColor=242424&color=242424" alt="Telegram Channel"></a>
    <a href="https://github.com/orzklv/win/actions/workflows/test.yml"><img align="center" src="https://img.shields.io/github/actions/workflow/status/orzklv/win/test.yml?style=flat&logo=github&logoColor=ffffff&labelColor=242424&color=242424" alt="Test CI"></a>
</p>

## About

In this repository I keep all my configurations and dot files to maintain my healthy development environment for any case. It contains configurations
for shell and environments like zsh (arch-linux, macos), powershell (windows). It comes with installer to shorten my time spending on set up.

> Installing everything manually by hand is a huge pain in da ass. Why not let an installer handle this?!

## Features

- Syntax Highlighting
- Auto Completions
- Auto Suggestions
- Rust made replacements
- Key configurations
- Software configurations

## Install (Automatic)

This process can be tough and easy at the same time depending on yourself... If you prefer trusting me and let me do all the dirty stuff, then just run the install script located on the root location of the project like this:

```shell
# Run this if it's your first time opening terminal
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

# Install configurations
irm https://raw.githubusercontent.com/orzklv/win/master/install.ps1 | iex
```

## Install (Manual)

Just copy-paste configs that you would need. You may use symlinks to prepend to the repository and then update the repo to get the latest changes.

## License

This project is licensed under the MIT License - see the [LICENSE](license) file for details.
