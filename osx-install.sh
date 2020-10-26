#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'

# Install Xcode Command Line Tools
xcode-select --install

# Install Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

brew tap caskroom/versions

#App store installation
brew install mas

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

#ack
brew install ack

#ant
#brew install ant

#vim
#brew install vim

#nodejs
brew install node

#multitail
brew install multitail

brew tap homebrew/completions

#slack
#brew cask install slack

#google chrome
#brew cask install google-chrome

#dropbox
brew cask install  dropbox

#box
brew cask install box-sync

#firefox
brew cask install firefox

#sublime-text
#brew cask install sublime-text

#sourcetree
brew cask install sourcetree

#charles proxy
#brew cask install charles

#skype
#brew cask install skype

#iterm
brew cask install iterm2

#Github Desktop
brew cask install github

#VirtualBox
#brew cask install virtualbox

#Docker
#brew cask install docker

#kitematic
#brew cask install kitematic

#Spring Tool Suite
#brew cask install sts

#whatsapp
brew cask install whatsapp

#Ring
#brew cask install ring

#https://github.com/mapmeld/gitjk
npm install -g gitjk

#Robomongo
#brew cask install robo-3t

#Glances (https://github.com/nicolargo/glances)
pip install glances

#lastpass
brew cask install lastpass

#telnet
brew install telnet

#Install ZSH
brew install zsh
chsh -s /bin/zsh

#bundler
gem install bundler

#awscli
brew install awscli

#maven
#brew install maven

#aerial screensaver
brew cask install aerial

#glances
#pip install glances
 
# cleanup
brew cleanup --force
