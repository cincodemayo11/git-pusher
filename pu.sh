#!/bin/bash


read -p "Enter the commit message: " MESSAGE
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
