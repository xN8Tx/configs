# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
export ZSH="$HOME/.oh-my-zsh"

# First open command
# figlet -f ANSI_Shadow.flf lets code | lolcat     
# neofetch && echo "NodeJS(powered by n) version:" $(node -v)

# ZSH_THEME="cobalt2"
ZSH_THEME="gozilla"

plugins=(git zsh-z zsh-syntax-highlighting)

# User configuration
source $ZSH/oh-my-zsh.sh

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
