#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Count Characters
# @raycast.mode silent

# Optional parameters:
# @raycast.icon ⚡
# @raycast.packageName count-characters
# @raycast.argument1 { "type": "text", "placeholder": "enter text" }

#!/bin/bash

# Count the number of characters
char_count=$(echo -n "$1" | wc -m)

# Output the number of characters
echo "The number of characters is: $char_count"