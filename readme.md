<header>
<img src="https://www.katsuki.moe/favicons/pinned.svg" alt="logo" height="100" align="left">
<h1 style="display: inline">Dot Files</h1>

My dotfiles for my machines to maintain my own development environment.

[![GitHub top language](https://img.shields.io/github/languages/top/katsuki-yuri/dots?style=flat-square&logo=github)](https://github.com/katsuki-yuri/dots)
[![Channel](https://img.shields.io/badge/Chat-grey?style=flat-square&logo=telegram)](https://t.me/yurionblog)
[![Shellcheck CI](https://github.com/katsuki-yuri/dots/actions/workflows/test.yml/badge.svg)](https://github.com/katsuki-yuri/dots/actions/workflows/test.yml)

</header>

## About

In this repository I keep all my configurations and dot files to maintain my healthy development environment for any case. It contains configurations
for shell and environments like zsh (arch-linux, macos), powershell (windows). It comes with installer to shorten my time spending on set up.

> Everytime I installed my dev env manually by myself, I started feeling like a garbage myself... So here you are!

## Features

- Markdown content renders
- Minecraft server status api
- Additional contents (like my favorite musics)
- Spotify live integration
- Docker image for easy deployment

## Install

In order to run the website, just install the latest LTS version of Node.js (it's 18.x.x at the moment) and make sure you have pnpm installed globally. Then run
the following commands:

```bash
pnpm install
pnpm run dev
```

## Docker

Also, you may actually run the docker image hosted on GitHub Container Registry:

```bash
docker run -p 3000:3000 ghcr.io/katsuki-yuri/website:latest
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
