export ZSH="/Users/fsn/.oh-my-zsh"
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=${PATH}:/usr/local/mysql/bin/

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh
source $HOMEBREW_PREFIX/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias phpunit="./vendor/phpunit/phpunit/phpunit"
alias pu="clear && vendor/bin/phpunit"
alias pf="clear && vendor/bin/phpunit --filter"
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias mc='magento-cloud'
alias vi=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# BEGIN SNIPPET: Magento Cloud CLI configuration
HOME=${HOME:-'/Users/fsn'}
export PATH="$HOME/"'.magento-cloud/bin':"$PATH"
if [ -f "$HOME/"'.magento-cloud/shell-config.rc' ]; then . "$HOME/"'.magento-cloud/shell-config.rc'; fi # END SNIPPET

export NVM_SYMLINK_CURRENT=true


# Load Angular CLI autocompletion.
source <(ng completion script)

# Shopify Hydrogen alias to local projects
alias h2='$(npm prefix -s)/node_modules/.bin/shopify hydrogen'
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/fsn/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions


# Herd injected PHP 8.4 configuration.
# export HERD_PHP_84_INI_SCAN_DIR="/Users/fsn/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP binary.
# export PATH="/Users/fsn/Library/Application Support/Herd/bin/":$PATH

# pnpm
export PNPM_HOME="/Users/fsn/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/fsn/.oh-my-zsh/completions/_bun" ] && source "/Users/fsn/.oh-my-zsh/completions/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
