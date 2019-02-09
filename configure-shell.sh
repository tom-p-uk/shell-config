#!/bin/bash
echo "Downloading iTerm2"
cd ~/Downloads
curl -O https://iterm2.com/downloads/stable/iTerm2-3_2_7.zip
echo "Installing iTerm2"
unzip ./iTerm2-3_2_7.zip
mv ~/Downloads/iTerm.app/ /Applications/
rm iTerm2-3_2_7.zip
spctl --add ~/Applications/iTerm.app/
nohup open /Applications/iTerm.app/ &>/dev/null &
echo "Installing Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "Installing Git"
brew install git
echo "Installing Zsh"
brew install zsh
chsh -s "$(which zsh)"
echo "Installing Oh My Zsh"
curl -L http://install.ohmyz.sh | sh
echo "Installing Zsh Syntax Highlighting"
cd ~/.oh-my-zsh && git clone git@github.com:zsh-users/zsh-syntax-highlighting.git
echo "Installing Z"
brew install z
cp .zshrc ~/
cp dirhistory.plugin.zsh /Users/$(id -un)/.oh-my-zsh/plugins/dirhistory  
cp iterm2-profiles.json ~/Library/Application\ Support/iTerm2/DynamicProfiles
echo "Set up complete"
