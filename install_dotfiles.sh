#!/bin/bash

# Apply all symlinks for dotfiles
bash -x "$PWD/scripts/install/symlinks.sh"
# Install zplug plugins
bash -x "$PWD/scripts/install/zplug.sh"