#     ______                      __
#    / ____/  ______  ____  _____/ /______
#   / __/ | |/_/ __ \/ __ \/ ___/ __/ ___/
#  / /____>  </ /_/ / /_/ / /  / /_(__  )
# /_____/_/|_/ .___/\____/_/   \__/____/
#           /_/

# Comppiler related configs
export LC_ALL=en_US.UTF-8
export LSCOLORS=""
export VISUAL=hx
export EDITOR=$VISUAL

# Third party software & manager
export VOLTA_HOME="$HOME/.volta"
export GOPATH="$HOME/.go"
export PATH="/opt/homebrew/opt/python/libexec/bin:$PATH"
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$VOLTA_HOME/bin:$PATH"

#     ____  __            _
#    / __ \/ /_  ______ _(_)___  _____
#   / /_/ / / / / / __ `/ / __ \/ ___/
#  / ____/ / /_/ / /_/ / / / / (__  )
# /_/   /_/\__,_/\__, /_/_/ /_/____/
#               /____/

# Zsh Autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999'
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh


# Zsh Completions
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
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

# Zsh Syntax Highlighter
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
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#     ______            __
#    / ____/   ______ _/ /____
#   / __/ | | / / __ `/ / ___/
#  / /___ | |/ / /_/ / (__  )
# /_____/ |___/\__,_/_/____/

command -v starship > /dev/null && eval "$(starship init zsh)"
command -v zoxide > /dev/null && eval "$(zoxide init zsh)"
command -v frum > /dev/null && eval "$(frum init)"
command -v jenv > /dev/null && eval "$(jenv init -)"

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
alias kawaii="brew update && \
        brew upgrade && brew \
        autoremove && brew   \
        cleanup && brew doctor"

# Made with Rust
alias top="btop"
alias cat="bat"
alias ls="exa"
alias sl="exa"
alias ps="procs"
alias grep="rg"
alias search="rg"
alias look="fd"
alias find="fd"
alias ping="gping"
alias time="hyperfine"
alias j="just"
alias make="just"

# Refresh
alias refresh="source ~/.zshrc"

# Vim
alias vim="hx"
alias vi="hx"

# Others (Developer)
alias rit="gitui"
alias ports="lsof -PiTCP -sTCP:LISTEN"
alias gc="git -c http.sslVerify=false clone"
alias git="git -c http.sslVerify=false"
alias gch="git checkout"
alias xclip="xclip -selection c"
alias speedtest="curl -o /dev/null cachefly.cachefly.net/100mb.test"
alias update="softwareupdate"

#     ______                 __  _
#    / ____/_  ______  _____/ /_(_)___  ____  _____
#   / /_  / / / / __ \/ ___/ __/ / __ \/ __ \/ ___/
#  / __/ / /_/ / / / / /__/ /_/ / /_/ / / / (__  )
# /_/    \__,_/_/ /_/\___/\__/_/\____/_/ /_/____/

# Start googling from terminal
google() {
    if [ -z "$1" ]; then
        echo "No argument supplied"
        return
    fi
    echo "Searching for $@"
    search_string="$@"
    open "https://www.google.com/search?q=$search_string"
}

# Additional helper to manage brew
brewster() {
	if [ -z "$1" ]; then
		echo "No argument supplied"
		return
	fi
	if [ "$1" = "clean" ]; then
		brew leaves > brew.txt
	elif [ "$1" = "detail" ]; then
		brew leaves | xargs -n1 brew desc > desc.txt
	else
		echo "Invalid argument"
		return
	fi
}

baka() {
    _help() {
    HELP_MESSAGE="baka
Baka Yuri's bootstrapper
Version: 0.1.0

Usage: baka [pack]

Commands:
  starter   Install starter pack
  developer Install developer pack
  *         Help
"

    echo $HELP_MESSAGE
    }

    _installer() {
        if [ -z "$1" ]; then
		  echo "No pack supplied"
		  return
        fi

        case "$1" in
          s)
            _pack=( starship btop bat exa procs rg fd gping hyperfine helix gitui )
            ;;
          d)
            _pack=( frum jenv volta rustup deno just openjdk )
            ;;
          r)
            _pack=( rustup just )
            ;;
          j)
            _pack=( volta deno bun )
            ;;
          g)
            _pack=( git gitui github gh )
            ;;
          *)
            echo Unknown pack supplied
            ;;
        esac

        for i in "${_pack[@]}"
        do
            if ! command -v "$i" &> /dev/null
            then
                brew install "$i"
            fi
        done

        unset _pack
    }

    case "$1" in
      starter|s)
        _installer s
        ;;
      dev|d)
        _installer d
        ;;
      rust|r)
        _installer r
        rustup set profile complete
        rustup default nightly
        ;;
      github|g)
        _installer g
        _file=/etc/resolv.conf
        if [[ -f "$_file" ]]; then
            echo "$_file exists! removing..."
        fi
        unset _file
        echo $GITCONFIG > ~/.gitconfig
        ;;
      *)
        _help
        ;;
    esac

    unset _help
    unset _installer
}

# Do git pushes without any hustle
lazygit() {
	USAGE="
lazygit [OPTION]... <msg>
    GIT but lazy
    Options:
        --fixup <commit>        runs 'git commit --fixup <commit> [...]'
        --amend                 runs 'git commit --amend --no-edit [...]'
        -f, --force             runs 'git push --force-with-lease [...]'
        -h, --help              show this help text
"
	while [ $# -gt 0 ]
	do
		key="$1"

		case $key in
			--fixup)
				COMMIT="$2"
				shift # past argument
				shift # past value
				;;
			--amend)
				AMEND=true
				shift # past argument
				;;
			-f|--force)
				FORCE=true
				shift # past argument
				;;
			-h|--help)
				echo "$USAGE"
				EXIT=true
				break
				;;
			*)
				MESSAGE="$1"
				shift # past argument
				;;
		esac
	done
	unset key
	if [ -z "$EXIT" ]
	then
		git status .
		git add .
		if [ -n "$AMEND" ]
		then
			git commit --amend --no-edit
		elif [ -n "$COMMIT" ]
		then
			git commit --fixup "$COMMIT"
			GIT_SEQUENCE_EDITOR=: git rebase -i --autosquash "$COMMIT"^
		else
			git commit -m "$MESSAGE"
		fi
		git push origin HEAD $([ -n "$FORCE" ] && echo '--force-with-lease')
	fi
	unset USAGE COMMIT MESSAGE AMEND FORCE
}