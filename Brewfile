#!/bin/sh

# thanks to https://github.com/tacahilo/.dotfiles/blob/0c75dc897a307c976bc75e09bc40686e6f0533d1/Brewfile
# :)

PATH=/usr/local/bin:$PATH

TAPS=(
#    homebrew/binary
#    homebrew/dupes
#    homebrew/versions
#    homebrew/science
    caskroom/versions
)

FORMULAS=(
    "git --with-brewed-curl --with-brewed-openssl --with-gettext --with-pcre"
    caskroom/cask/brew-cask
    hub
    ssh-copy-id
    zsh
    diff-so-fancy
    thefuck
    git-extras
    typesafe-activator
    scala
    wget
    tree
    ruby
    gpg
    keybase
    jq
    httpie
)

CASKS=(
    dropbox
    google-drive
    firefox
    google-chrome
    skype
    quicklook-json
    alfred
    atom
    sublime-text3
    slack
    evernote
    telegram
    whatsapp
    dash
    tower
    boxcryptor
    1password
    controlplane
    qlmarkdown
    paw
)

function setup() {
    [ -x "/usr/local/bin/brew" ] || {
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    }
}

function install_brewfiles() {
    for tap in "${TAPS[@]}"; do
        brew tap $tap
    done

    for formula in "${FORMULAS[@]}"; do
        brew install $formula
    done
}

function install_caskfiles() {
    for cask in "${CASKS[@]}"; do
        brew cask install $cask
    done
}

function main() {
    setup

    brew update
    brew upgrade

    install_brewfiles
    install_caskfiles

    brew cleanup
    brew doctor
}

main
