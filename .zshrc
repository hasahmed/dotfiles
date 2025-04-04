export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH":$HOME/bin
export PATH="$PATH":/usr/local/bin/
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

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
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  catimg
  tmux
  ruby
  npm
  node
  python
  pip
  rails
  gem
  gulp
)

#ZSH_TMUX_AUTO_START="true"
#ZSH_TMUX_AUTO_START_ONCE="true"

source $ZSH/oh-my-zsh.sh
# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export EDITOR='vim'
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
#alias sharedir="pwd > $HOME/.sharedir"
#global aliases
alias p3=python3
alias tmux="tmux -u"
alias cat=bat
alias gpvsu="git push --set-upstream origin master"


# unset LESS disables pager for commands like git branch
unset LESS

alias chrome='/opt/google/chrome/chrome'
alias grvc="grv | head -1 | sed 's/^origin//' | sed 's/(fetch)//'"

function gro {
    chrome $(grvc)
}


# alias ohmyzsh="mate ~/.oh-my-zsh"
setopt extended_glob
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"


# start tmux if it isn't started already
if ! tmux info &> /dev/null; then
    tmux
fi

alias gs='git status'
alias gb='git branch'
alias gcb='git checkout -b'
alias gaa='git add -A'
alias gcmsg='git commit -m'
alias grv='git remote -v'
alias gs='git status'
alias gb='git branch'
alias gcb='git checkout -b'
alias gaa='git add -A'
alias gcmsg='git commit -m'
alias grv='git remote -v'
