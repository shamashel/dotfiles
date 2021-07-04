#!/bin/bash

##
# Dock
##

# remove all the junk from the dock
defaults write com.apple.dock persistent-apps -array

# list what we want to add back, and in what order
declare -a dock_apps=(
  "iTerm"
)

# add some things back
for app_name in "${dock_apps[@]}"
do
  defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/$app_name.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# reload the dock
killall Dock

##
# Menu bar
##

# Show battery percent
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

##
# Finder
##

# New window target
# Computer     : `PfCm`
# Volume       : `PfVo`
# $HOME        : `PfHm`
# Desktop      : `PfDe`
# Documents    : `PfDo`
# All My Files : `PfAF`
# Other…       : `PfLo`
defaults write com.apple.finder NewWindowTarget -string 'PfHm'

# Show all filename extensions
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Don't shout at me for changing file extensions
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable Dashboard
defaults write com.apple.dashboard mcx-disabled -bool true

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Enable the Develop menu and the Web Inspector in Safari
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# Prevent Photos from opening automatically when devices are plugged in
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool true

# Don't automatically sync connected devices
defaults write com.apple.itunes dontAutomaticallySyncIPods -bool true

# Wicked speedy key repeat, reasonable delay before repeat begins
defaults write NSGlobalDomain KeyRepeat -int 1
defaults write NSGlobalDomain InitialKeyRepeat -int 25
