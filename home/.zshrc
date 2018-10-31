export PATH=$HOME/bin:/usr/local/bin:/home/vincent/.local/bin:$PATH
export PATH=$PATH:$HOME/system/panel
export TERM='gnome-256color'


export ZSH="/home/vincent/.oh-my-zsh"

export VULKAN_SDK=~/vulkan/1.1.82.1/x86_64
export PATH=$VULKAN_SDK/bin:$PATH
export LD_LIBRARY_PATH=$VULKAN_SDK/lib:$LD_LIBRARY_PATH
export VK_LAYER_PATH=$VULKAN_SDK/etc/explicit_layer.d

ZSH_THEME="robbyrussell"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(
  git,
  ubuntu
)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=de_DE.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source "$HOME/.homesick/repos/homeshick/homeshick.sh"
