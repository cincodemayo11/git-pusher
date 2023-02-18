#!/bin/bash



read -p "Enter the commit message: " MESSAGE
git add .
git commit -m '$MESSAGE'

expect <<EOF
spawn git push
expect "*Username*"
send "$GITUSER\r"

expect "*Password*"
send "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\r"


expect eof
EOF
