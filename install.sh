# Install the dotfiles
git clone https://github.com/katsuki-yuri/dots.git ~/.dots

# Install additional tools
git clone https://github.com/katsuki-yuri/tools.git ~/.tools

# Install zsh config
ln -sf ~/.dots/shells/.zshrc ~/.zshrc

# Install helix configs
ln -sf ~/.dots/.config/helix ~/.config/helix

# If zsh is not default shell, change it to zsh on mac and linux\
if [ "$(uname)" == "Linux" ]; then
	if [ "$SHELL" != "/usr/bin/zsh" ]; then
		chsh -s /usr/bin/zsh
	fi
fi

if [ "$(uname)" == "Darwin" ]; then
	if [ "$SHELL" != "/bin/zsh" ]; then
		chsh -s /bin/zsh
	fi
fi

# If it's arch linux, install paru aur helper
if [ "$(uname)" == "Linux" ]; then
	if [ -f /etc/arch-release ]; then
		# Install rust
		sudo pacman -S rustup
		rustup set profile complete
		rustup default nightly

		# Install paru
		sudo pacman -S --needed base-devel
		git clone https://aur.archlinux.org/paru.git
		cd paru || (echo "Can't enter to paru's git location" && exit 1)
		makepkg -si
		cd ..
		rm -rf paru

		arch_packages=(
			"btop"
			"bat"
			"exa"
			"procs"
			"ripgrep"
			"fd"
			"gping"
			"hyperfine"
			"just"
			"helix"
			"starship"
			"tealdeer"
			"topgrade-bin"
			"volta-bin"
		)

		paru -S "${arch_packages[@]}"
	fi

	# If it's ubuntu
	if [ -f /etc/lsb-release ]; then
		# Update and upgrade
		sudo apt -y update
		sudo apt -y upgrade

		# Install rust & rustup
		curl https://sh.rustup.rs -sSf | sh -s -- -y
		source "$HOME/.cargo/env"

		# Install deno
		curl -fsSL https://deno.land/install.sh | sh
		export DENO_INSTALL="/home/codespace/.deno"
		export PATH="$DENO_INSTALL/bin:$PATH"

		# Install volta
		curl https://get.volta.sh | bash
		export VOLTA_HOME="$HOME/.volta"
		export PATH="$VOLTA_HOME/bin:$PATH"
		volta install node@lts pnpm prettier
	fi

	# Install bspwm config
	ln -sf ~/.dots/.config/bspwm ~/.config/bspwm

	# Install sxhkd config
	ln -sf ~/.dots/.config/sxhkd ~/.config/sxhkd

	# Install picom config
	ln -sf ~/.dots/.config/picom.conf ~/.config

	# Install paru config
	ln -sf ~/.dots/.config/paru ~/.config/paru

	# Install alacritty config
	mkdir -p ~/.config/alacritty
	ln -sf ~/.dots/terms/Alacritty/alacritty.yml ~/.config/alacritty/
fi

# If it's macos
if [ "$(uname)" == "Darwin" ]; then
	# Install brew
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

	# Install rust & rustup
	curl https://sh.rustup.rs -sSf | sh -s -- -y
	source "$HOME/.cargo/env"

	# Install deno
	curl -fsSL https://deno.land/install.sh | sh
	export DENO_INSTALL="/home/codespace/.deno"
	export PATH="$DENO_INSTALL/bin:$PATH"

	# Install volta
	curl https://get.volta.sh | bash
	export VOLTA_HOME="$HOME/.volta"
	export PATH="$VOLTA_HOME/bin:$PATH"
	volta install node@lts pnpm prettier

	# Install brew packages
	brew_packages=(
		"btop"
		"bat"
		"exa"
		"procs"
		"ripgrep"
		"fd"
		"gping"
		"hyperfine"
		"just"
		"helix"
		"starship"
		"tealdeer"
		"topgrade-bin"
		"volta-bin"
	)

	brew install "${brew_packages[@]}"

	# Install bspwm config
	ln -sf ~/.dots/.config/bspwm ~/.config/bspwm

	# Install sxhkd config
	ln -sf ~/.dots/.config/sxhkd ~/.config/sxhkd

	# Install picom config
	ln -sf ~/.dots/.config/picom.conf ~/.config

	# Install paru config
	ln -sf ~/.dots/.config/paru ~/.config/paru

	# Install alacritty config
	mkdir -p ~/.config/alacritty
	ln -sf ~/.dots/terms/Alacritty/alacritty.yml ~/.config/alacritty/
fi
