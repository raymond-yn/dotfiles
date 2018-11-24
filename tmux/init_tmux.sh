#!/bin/bash
tmux new -s work -d
tmux rename-window -t "work:1" main
tmux split-window  -t "work:main"

# run some service on tmux
# tmux send -t "init:service" "cd ~/workspace/language/python/;python2.7 server.py" Enter
