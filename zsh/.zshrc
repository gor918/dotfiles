export ZSH="/Users/gor/.oh-my-zsh"

ZSH_THEME="cloud"

plugins=(git)

source $ZSH/oh-my-zsh.sh

alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias zshconfig="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias ya-ded="yarn-deduplicate yarn.lock"
alias git-reset="git reset HEAD~"
alias c="clear"
alias x="exit" # close terminal
alias ag="alias"
alias iop="npx @squoosh/cli --oxipng auto "
alias iow="npx @squoosh/cli --webp auto " # aziz i am installed one