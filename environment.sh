sudo -v
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Disable Press-and-hold for Keys in Favor of Key Repeat

defaults write -g ApplePressAndHoldEnabled -bool false

# Open Everything in Finder's Columns View

defaults write com.apple.Finder FXPreferredViewStyle clmv

# Fast Key Repeat

defaults write NSGlobalDomain KeyRepeat -int 0

# Show Different Volumes on the Desktop

defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Setup Safari for Development

defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Disable the sound effects on boot

sudo nvram SystemAudioVolume=" "

# Copy Command Line Tools

cp ./{.aliases,.environment,.functions,.prompt} ~/

# Load Command Line Tools in the .bashrc

echo -e "\n\n[[ -s ~/.environment ]] && source ~/.environment\n[[ -s ~/.aliases ]] && source ~/.aliases\n[[ -s ~/.functions ]] && source ~/.functions\n[[ -s ~/.prompt ]] && source ~/.prompt" >> ~/.bashrc

# Copy Development Tools

cp ./{*.properties,*.json} ../
