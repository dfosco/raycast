#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Open repository
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🛠️
# @raycast.packageName coding
# @raycast.argument1 { "type": "text", "placeholder": "directory" }

repo_folder=$(cat ./_repositories-folder.txt)

cd $repo_folder/$1
code .