#!/usr/bin/env bash

projectFolder="$HOME/Desktop" # example
osascript <<-EOF
tell application "iTerm2"
  tell current session of current window
    split horizontally with default profile
  end tell
end tell
EOF
