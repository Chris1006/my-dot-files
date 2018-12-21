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

renderprompt() {
  PS1=$(show_user_host)%F{blue}$(parse_git_branch)$'\n'%F{white}"$ "%{$resetcolor%}
}

precmd() { renderprompt; }

# run neofetch on startup
#neofetch
