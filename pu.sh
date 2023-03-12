#!/bin/bash

read -p "Enter a commit message (or press Enter for default message): " MESSAGE
if [[ -z "$MESSAGE" ]]; then
    MESSAGE="Automatic commit message"
fi

git add .
git commit -m "$MESSAGE"

expect <<EOF
spawn git push
expect "*Username*"
send "$GITUSER\r"

expect "*Password*"
send "$GITPASS\r"


expect eof
EOF
