# Migration Directory

mkdir -p ~/Migration/Home
cd ~/Migration

# brew, cask, npm, gems

brew leaves             > brew-list.txt
brew cask list          > cask-list.txt
npm list -g --depth=0   > npm-g-list.txt

# Copy

cp -R ~/.ssh ~/Migration/Home
cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/Migration
cp ~/Library/Preferences/com.tinyspeck.slackmacgap.plist ~/Migration
cp ~/.bash_history ~/Migration
cp "~/Library/Application Support/Sublime Text 3/Packages" ~/Migration
