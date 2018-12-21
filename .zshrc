# EXPORT PATH 
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Disabled auto update
DISABLE_AUTO_UPDATE="true"

# HISTORY OPTIONS

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt promptsubst

#GIT STUFF

autoload -Uz vcs_info
zstyle ":vcs_info:*" enable git
zstyle ":vcs_info:(git*):*" get-revision true
zstyle ":vcs_info:(git*):*" check-for-changes true

local _branch="%c%u%m %{$fg[green]%}%b%{$reset_color%}"
local _repo="%{$fg[green]%}%r %{$fg[yellow]%}%{$reset_color%}"
local _revision="%{$fg[yellow]%}%.7i%{$reset_color%}"
local _action="%{$fg[red]%}%a%{$reset_color%}"
zstyle ":vcs_info:*" stagedstr "%{$fg[yellow]%}✓%{$reset_color%}"
zstyle ":vcs_info:*" unstagedstr "%{$fg[red]%}✗%{$reset_color%}"
zstyle ":vcs_info:git*" formats "$_branch:$_revision - $_repo"
zstyle ":vcs_info:git*" actionformats "$_branch:$_revision:$_action - $_repo"
zstyle ':vcs_info:git*+set-message:*' hooks git-stash
# Uncomment to enable vcs_info debug mode
# zstyle ':vcs_info:*+*:*' debug true

function +vi-git-stash() {
	if [[ -s "${hook_com[base]}/.git/refs/stash" ]]; then
		hook_com[misc]="%{$fg_bold[grey]%}~%{$reset_color%}"
	fi
}

precmd() {
	vcs_info
}

# AUTOCOMPLETE OPTIONS

zstyle ':completion:*' menu select

# aliases
alias pm="trizen"
alias sudo="sudo "
alias sv="systemctl"
alias sysud="trizen -Syyu"
alias ls="ls --color=tty"

#setting up nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#setting up vim as default editor
export VISUAL=vim
export EDITOR=$VISUAL
export BROWSER="chromium"
export TERMINAL="st"

#setting up dotnet core paths
export MSBuildSDKsPath=/opt/dotnet/sdk/$(dotnet --version)/Sdks
export PATH=$MSBuildSDKsPath:$PATH


# theming

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\<\1\>/'
}

show_user_host() {
  echo "%F{red}[%F{yellow}%n%F{green}@%F{blue}%M %F{magenta}%~%F{red}]%F{white}"
}

PROMPT=$(show_user_host)%F{blue}'${vcs_info_msg_0_}'$'\n'%F{white}"$ "%{$resetcolor%}

#RPROMPT='${vcs_info_msg_0_}' # git branch

# run neofetch on startup
#neofetch
