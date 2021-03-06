# If you come from bash you might have to change your $PATH.
export PATH=$HOME/Development/flutter/bin:~/.npm-global/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$HOME/.local/bin
export PATH=~/.npm-global/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="af-magic"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
)

source $ZSH/oh-my-zsh.sh

alias rider="~/Development/Rider/bin/rider.sh"
alias pycharm="~/Development/PyCharm/bin/pycharm.sh"
alias intellij="~/Development/Intellij/bin/idea.sh"
alias webstorm="~/Development/WebStorm/bin/webstorm.sh"
alias ec="expressvpn connect usch"
alias ed="expressvpn disconnect"
alias off="xset dpms force off"
alias android-studio="~/Development/android-studio/bin/studio.sh"
alias rs="java -jar ~/Programs/RuneLite.jar"
alias config="code ~/.zshrc"
alias zeves="bash /opt/Z/Z-Eves/system/z-eves-gui.sh"
alias anem="run ~/Android/Sdk/emulator/emulator -avd Pixel_XL_API_28 -qemu -m 2047 -enable-kvm; sleep 5; ~/Android/Sdk/platform-tools/adb reverse tcp:7071 tcp:7071"

alias tms="tmux new-session \; \
  split-window -h \; \
"
alias gc="google-chrome"
alias "run"="run_in_background"
alias op="run nautilus ."
alias psave="sudo tlp start"
alias postman="~/Development/postman/Postman"

run_in_background() {
  eval "$@ &>/dev/null &disown";
}

github() {
  REMOTE=$(git remote -v | grep github.com -m 1)
  REGEX="github\.com[:/](.+).git"
  if [[ $REMOTE =~ $REGEX ]]; then
    URL_PATH=${match[1]}
    URL=https://github.com/"${URL_PATH}"
  fi
  BRANCH=$(git rev-parse --symbolic-full-name --abbrev-ref HEAD)
  if [[ "$1" = "pr" ]]; then
    INTO=$2
    if [[ "$2" = "" ]]; then
      INTO="master"
    fi
    URL=${URL}/compare/${INTO}...${BRANCH}
  elif [[ "$1" = "branch" ]]; then
    URL=${URL}/tree/${BRANCH}
  fi
  xdg-open $URL
}

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

