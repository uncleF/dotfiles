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

# Enable the automatic update check

defaults write com.apple.SoftwareUpdate AutomaticCheckEnabled -bool true

# Download newly available updates in background

defaults write com.apple.SoftwareUpdate AutomaticDownload -int 1

# Install System data files & security updates

defaults write com.apple.SoftwareUpdate CriticalUpdateInstall -int 1

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)

defaults write com.apple.screencapture type -string "png"

# Disable shadow in screenshots

defaults write com.apple.screencapture disable-shadow -bool true

# Minimize windows into their application’s icon

defaults write com.apple.dock minimize-to-application -bool true

# Automatically hide and show the Dock

defaults write com.apple.dock autohide -bool true

# Avoid creating .DS_Store files on network or USB volumes

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# Automatically quit printer app once the print jobs complete

defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the warning when changing a file extension

defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Finder: show all filename extensions

defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Remove the auto-hiding Dock delay

defaults write com.apple.dock autohide-delay -float 0

# Expand save panel by default

defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Disable the sound effects on boot

sudo nvram SystemAudioVolume=" "

# Copy Command Line Tools

cp ./{.aliases,.environment,.functions,.prompt} ~/

# Load Command Line Tools in the .bashrc

echo "\n\n[[ -s ~/.environment ]] && source ~/.environment\n[[ -s ~/.aliases ]] && source ~/.aliases\n[[ -s ~/.functions ]] && source ~/.functions\n[[ -s ~/.prompt ]] && source ~/.prompt" >> ~/.profile

# Copy Development Tools

cp ./{*.properties,*.json} ../
