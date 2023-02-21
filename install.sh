# Install the dotfiles
git clone https://github.com/katsuki-yuri/dots.git ~/.dots

# Install zsh config
ln -sf ~/.dots/shells/.zshrc ~/.zshrc

# Install helix configs
ln -sf ~/.dots/.config/helix ~/.config

# If it's linux, not macos
if [ "$(uname)" == "Linux" ]; then
    # Install bspwm config
    ln -sf ~/.dots/.config/bspwm ~/.config

    # Install sxhkd config
    ln -sf ~/.dots/.config/sxhkd ~/.config

    # Install picom config
    ln -sf ~/.dots/.config/picom.conf ~/.config

    # Install paru config
    ln -sf ~/.dots/.config/paru ~/.config

    # Install alacritty config
    mkdir -p ~/.config/alacritty
    ln -sf ~/.dots/terms/Alacritty/alacritty.yml ~/.config/alacritty/
fi
