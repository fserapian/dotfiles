export ZSH="/Users/fsn/.oh-my-zsh"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=${PATH}:/usr/local/mysql/bin/

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias phpunit="./vendor/phpunit/phpunit/phpunit"
alias pu="clear && vendor/bin/phpunit"
alias pf="clear && vendor/bin/phpunit --filter"
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
