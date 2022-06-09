# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/zprofile.pre.zsh"
unset MAILCHECK

export GPG_TTY=$(tty)

eval "$(/opt/homebrew/bin/brew shellenv)"


export ARCHFLAGS="-arch x86_64"

export AWS_REGION="eu-central-1"
export AWS_DEFAULT_REGION="eu-central-1"

# ALIASES
alias code="open -a /Applications/Visual\ Studio\ Code.app"
alias c='clear'
alias r='source ~/.zprofile'
alias l='ls -a'
alias ll='ls -la'
alias yuic='yarn upgrade-interactive'
alias yui='yarn upgrade-interactive --latest'
alias edit='code ~/.zprofile'
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias ip='ifconfig | grep "inet "'
alias dock_add_separator='defaults write com.apple.dock persistent-apps -array-add "{tile-data={}; tile-type=\"spacer-tile\";}" ; killall Dock'
alias ya-ded="yarn-deduplicate yarn.lock"
alias ya-dedo='$(if [ yarn-deduplicate yarn.lock ] ; yarn-deduplicate yarn.lock; yarn dedupe; fi)'

alias git-reset="git reset HEAD~"
alias kill-port="kill -9 $(lsof -ti:3000)"
alias ws="webstorm ."
alias vc="code ."

export LC_ALL=en_GB.UTF-8

export PATH=$PATH:/usr/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/opt/local/bin
export PATH=$PATH:/opt/homebrew/bin
export PATH=$PATH:/opt/local/sbin
export PATH=$PATH:/usr/local/buildenv

function cleanDockers() {
    docker container prune -f
    docker rmi -f $(docker images | grep none | awk 'NR>1 {print $3}')
}

function fixIde() {
    echo "idea.case.sensitive.fs=true" >> /Applications/WebStorm.app/Contents/bin/idea.properties
    # echo "idea.case.sensitive.fs=true" >> /Applications/PyCharm.app/Contents/bin/idea.properties
}

ssh-add --apple-use-keychain > /dev/null

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/zprofile.post.zsh"
