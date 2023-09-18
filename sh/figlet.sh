#/bin/sh
read $input
fig="$(figlet "$input" | xclip -selection clipboard)"
