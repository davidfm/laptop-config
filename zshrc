# Path to your oh-my-zsh installation.
  export ZSH=/home/fernandezd/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.venvburrito/startup.sh

POWERLEVEL9K_MODE='awesome-fontconfig'



# Ansible
alias ansible="workon ansible; ansible --vault-password-file ~/.ansible/password"
alias ansible-playbook='workon ansible; ansible-playbook -e "ansible_user=fernandezd" --vault-password-file ~/.ansible/password'
alias ansible-playbook2='workon ansible; ansible-playbook -e "ansible_user=root" --vault-password-file ~/.my_ansible/password'
alias ansible-vault="workon ansible; ansible-vault --vault-password-file ~/.ansible/password"
alias start-ansible="workon ansible; cd ~/code/ansible_infrastructure/"
alias ansible-vault2="workon ansible; ansible-vault --vault-password-file ~/.my_ansible/password"


alias pbcopy="xsel -b"

alias screenshot="scrot -s"
alias gen-password="< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c${1:-32};echo;"
alias killSQLDeveloper="jps | grep 'OracleIdeLauncher' | awk '{ print $1}' | xargs kill"
alias trackpad="xmodmap ~/.Trackpad"
alias home="~/.screenlayout/home.sh && xmodmap ~/.Trackpad"
alias office2="~/.screenlayout/office2.sh && xmodmap ~/.Trackpad"
alias lock="gnome-screensaver-command --lock"

export BLOCK_SIZE=human-readable
export ANSIBLE_NOCOWS=1
