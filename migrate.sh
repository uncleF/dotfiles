# Migration Directory

mkdir -p ~/Migration/Home
cd ~/Migration

# brew, casc, npm, gems

brew leaves             > brew-list.txt
brew cask list          > cask-list.txt
npm list -g --depth=0   > npm-g-list.txt

# Copy

cp -R ~/.ssh ~/Migration/Home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration
cp ~/Library/Preferences/com.tinyspeck.slackmacgap.plist ~/migration
cp ~/.bash_history ~/Migration
cp "~/Library/Application Support/Sublime Text 3/Packages" ~/Migration
