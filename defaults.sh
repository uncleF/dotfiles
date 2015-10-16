# Disable Press-and-hold for Keys in Favor of Key Repeat
defaults write -g ApplePressAndHoldEnabled -bool false

# Open Everything in Finder's Columns View
defaults write com.apple.Finder FXPreferredViewStyle clmv

# Fast Key Repeat
defaults write NSGlobalDomain KeyRepeat -int 0

# Show Different Volumes on the Desktop
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# Set up Safari for Development
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true