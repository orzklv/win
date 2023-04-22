#     ______                      __
#    / ____/  ______  ____  _____/ /______
#   / __/ | |/_/ __ \/ __ \/ ___/ __/ ___/
#  / /____>  </ /_/ / /_/ / /  / /_(__  )
# /_____/_/|_/ .___/\____/_/   \__/____/
#           /_/

# Compiler related configs
export LC_ALL=en_US.UTF-8
export LSCOLORS=""
export VISUAL=hx
export EDITOR=$VISUAL

# enable terminal linewrap
setterm -linewrap on 2> /dev/null

# Third party software & manager
export GOPATH="$HOME/.go"
export VOLTA_HOME="$HOME/.volta"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.tools/bin:$PATH"
export PATH="$HOME/.go/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"
export PATH="$HOME/.dotnet/tools:$PATH"

# MacOS related homebrew exports
if [[ "$OSTYPE" == "darwin"* ]]; then
  export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
  export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"

  # Compiler related configs
  export PATH="$(brew --prefix)/opt/llvm/bin:$PATH"
  export CPATH="$(brew --prefix)/include"
  export LIBRARY_PATH="$(brew --prefix)/lib"
  export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib/gcc/current"
fi

#    _____      __  __  _
#   / ___/___  / /_/ /_(_)___  ____ ______
#   \__ \/ _ \/ __/ __/ / __ \/ __ `/ ___/
#  ___/ /  __/ /_/ /_/ / / / / /_/ (__  )
# /____/\___/\__/\__/_/_/ /_/\__, /____/
#                           /____/

# Global settings
setopt AUTO_CD
setopt BEEP
setopt HIST_BEEP
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST
setopt NO_NO_MATCH
setopt NOTIFY
setopt NUMERIC_GLOB_SORT
setopt PROMPT_SUBST
setopt SHARE_HISTORY

# Key bindings
bindkey -e
bindkey '^U' backward-kill-line
bindkey '^[[2~' overwrite-mode
bindkey '^[[3~' delete-char
bindkey '^[[H' beginning-of-line
bindkey '^[[1~' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[4~' end-of-line
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[3;5~' kill-word
bindkey '^[[5~' beginning-of-buffer-or-history
bindkey '^[[6~' end-of-buffer-or-history
bindkey '^[[Z' undo
bindkey ' ' magic-space

# History files
HISTFILE=~/.zsh_history
HIST_STAMPS=mm/dd/yyyy
HISTSIZE=5000
SAVEHIST=5000
ZLE_RPROMPT_INDENT=0
WORDCHARS=${WORDCHARS//\/}
PROMPT_EOL_MARK=
TIMEFMT=$'\nreal\t%E\nuser\t%U\nsys\t%S\ncpu\t%P'

#     ____  __            _
#    / __ \/ /_  ______ _(_)___  _____
#   / /_/ / / / / / __ `/ / __ \/ ___/
#  / ____/ / /_/ / /_/ / / / / (__  )
# /_/   /_/\__,_/\__, /_/_/ /_/____/
#               /____/

# _  _|____.  _|_ _  _    _  _  _  __|_o _ ._  _
# /__>| |(_||_||_(_)_>|_|(_|(_|(/__> |_|(_)| |_>
#                         _| _|
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'

if [[ "$OSTYPE" == "darwin"* ]]; then
	source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
else
	source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# _  _|____ _ ._ _ ._ | __|_o _ ._  _
# /__>| |(_(_)| | ||_)|(/_|_|(_)| |_>
#                  |
if [[ "$OSTYPE" == "darwin"* ]]; then
	FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fi

autoload -Uz compinit
compinit -d ~/.cache/zcompdump
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' rehash true
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# _  _|____  .__|_ _.__|_ o _ |_ |o _ |__|_ _ ._
# /__>| |_>\/| ||_(_|><| ||(_|| |||(_|| ||_(/_|
#          /                _|      _|
typeset -gA ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=white,underline
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[precommand]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[path]=bold
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
ZSH_HIGHLIGHT_STYLES[globbing]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command-substitution]=none
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[process-substitution]=none
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=green
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=yellow
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=magenta
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[assign]=none
ZSH_HIGHLIGHT_STYLES[redirection]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
ZSH_HIGHLIGHT_STYLES[named-fd]=none
ZSH_HIGHLIGHT_STYLES[numeric-fd]=none
ZSH_HIGHLIGHT_STYLES[arg0]=fg=cyan
ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout

if [[ "$OSTYPE" == "darwin"* ]]; then
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
	source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#     ______            __
#    / ____/   ______ _/ /____
#   / __/ | | / / __ `/ / ___/
#  / /___ | |/ / /_/ / (__  )
# /_____/ |___/\__,_/_/____/

command -v starship > /dev/null && eval "$(starship init zsh)"
command -v zoxide > /dev/null && eval "$(zoxide init zsh)"
command -v frum > /dev/null && eval "$(frum init)"
command -v jenv > /dev/null && eval "$(jenv init -)"
command -v github-copilot-cli > /dev/null && eval "$(github-copilot-cli alias -- "$0")"

#     ___    ___
#    /   |  / (_)___ _________  _____
#   / /| | / / / __ `/ ___/ _ \/ ___/
#  / ___ |/ / / /_/ (__  )  __(__  )
# /_/  |_/_/_/\__,_/____/\___/____/

# User Aliases
alias down="cd ~/Downloads"
alias ..="cd .."
alias ....="cd ../.."
alias celar="clear"
alias :q="exit"

# Made with Rust
command -v btop > /dev/null && alias top="btop"
command -v bat > /dev/null && alias cat="bat"
command -v exa > /dev/null && alias ls="exa"
command -v exa > /dev/null && alias sl="exa"
command -v procs > /dev/null && alias ps="procs"
command -v rg > /dev/null && alias grep="rg"
command -v rg > /dev/null && alias search="rg"
command -v fd > /dev/null && alias look="fd"
command -v fd > /dev/null && alias find="fd"
command -v gping > /dev/null && alias ping="gping"
command -v hyperfine > /dev/null && alias time="hyperfine"
command -v just > /dev/null && alias j="just"
command -v just > /dev/null && alias make="just"
command -v cargo > /dev/null && alias korgi="cargo"

# Refresh
alias refresh="source ~/.zshrc"

# Vim (if MacOS or else Arch Linux)
command -v hx > /dev/null && alias vi="hx"
command -v hx > /dev/null && alias vim="hx"
command -v helix > /dev/null && alias vi="helix"
command -v helix > /dev/null && alias vim="helix"

# Others (Developer)
alias ports="lsof -PiTCP -sTCP:LISTEN"
command -v gitui > /dev/null && alias rit="gitui"
command -v git > /dev/null && alias gch="git checkout"
command -v xdg-open > /dev/null && alias open="xdg-open"
command -v xclip > /dev/null && alias xclip="xclip -selection c"
alias speedtest="curl -o /dev/null cachefly.cachefly.net/100mb.test"
command -v git > /dev/null && alias git="git -c http.sslVerify=false"
command -v git > /dev/null && alias gc="git -c http.sslVerify=false clone"

# Updating the system
command -v pacman > /dev/null && alias update="sudo pacman -Syyu"
command -v softwareupdate > /dev/null && alias update="softwareupdate"

# Updating shell and dotfiles
update-shell() {
	# Save the current directory
	local current_dir=$(pwd)

	directories=(
		"~/.dots"
		"~/.tools"
	)

	for directory in $directories; do
		# Go to the dotfiles directory
		cd $directory

		# Update the repository
		git pull
	done

	# Get back and clean the directory
	cd $current_dir
	unset current_dir
}