#!/bin/bash

# Apply all symlinks for dotfiles
bash -x "$PWD/scripts/install/symlinks.sh"
# Install zplug plugins
bash -x "$PWD/scripts/install/zplug.sh"
# Update MacOS system settings/defaults to be more nerd-friendly
# For details, see the referenced script. Everything is commented there.
bash -x "$PWD/scripts/install/macos.sh"