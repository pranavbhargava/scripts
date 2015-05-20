#!/bin/sh
echo Install all AppStore Apps at first!
# no solution to automate AppStore installs
read -p "Press any key to continue... " -n1 -s
echo  '\n'
 
echo Install and Set San Francisco as System Font
ruby -e "$(curl -fsSL https://raw.github.com/wellsriley/YosemiteSanFranciscoFont/master/install)"
echo Install Homebrew, wget and cask
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
brew tap homebrew/science
brew install wget
brew install node
brew install ant
brew install ffmpeg
npm install -g gitjk
 
brew tap phinze/cask
brew install brew-cask
 
# Core Functionality
echo Install Core Apps
brew cask install  dropbox
brew cask install  iterm2
 
## get from App Store
 
# Development
echo Install Dev Apps
brew cask install github
brew cask install sublime-text
brew cask install macvim
brew cask install virtualbox
brew cask install vagrant
brew cask install sourcetree
brew cask install charles
 
# Google Slavery
echo Install Google Apps | Chrome not included cause of 1Password Plugin
# brew cask install google-chrome
brew cask install google-drive
brew cask install chromecast
 
# Nice to have
echo Install Some additional Apps
brew cask install firefox
 
brew cask install skype
brew cask install spotify
brew cask install spotify-notifications
 
# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
