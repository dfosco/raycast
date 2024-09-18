#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title commit repository
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🛠️
# @raycast.packageName coding

# Documentation:
# @raycast.description Save dotfile changes
# @raycast.author Daniel Fosco
# @raycast.argument1 { "type": "text", "placeholder": "directory" }

repo_folder=$(cat ./_repositories-folder.txt)

cd $repo_folder/$1;
git add -A
git commit -m "Update $1 @ $(date +'%m/%d/%Y - %H:%M')"
git push