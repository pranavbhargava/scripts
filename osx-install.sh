#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

#App store installation
brew install mas

# Readline
brew install readline

# cloc
brew install cloc

# Bash
brew install bash

# Bash Completion
brew install bash-completion

# Colorized Cat
brew install ccat

# CTags
brew install ctags

# Diff So Fancy
brew install diff-so-fancy


# direnv
brew install direnv

#wget
brew install wget

#ant
brew install ant

#vim
brew install vim

#nodejs
brew install node


brew tap homebrew/completions

#slack
brew cask install slack

#google chrome
brew cask install google-chrome

#dropbox
brew cask install  dropbox

#firefox
brew cask install firefox

#sublime-text
brew cask install sublime-text

#sourcetree
brew cask install sourcetree

#charles proxy
brew cask install charles

#skype
brew cask install skype

#iterm
brew cask install iterm2

#Github Desktop
brew cask install github-desktop

#VirtualBox
brew cask install virtualbox

#Docker
brew cask install docker

#Spring Tool Suite
brew cask install sts

#whatsapp
brew cask install whatsapp

#Ring
brew cask install ring

#https://github.com/mapmeld/gitjk
npm install -g gitjk

 
#Install ZSH
brew install zsh
chsh -s /bin/zsh
 
# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
