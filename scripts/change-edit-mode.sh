#!/bin/bash
# Toggle between copy mode (vi) and normal mode

if tmux display-message -p '#{pane_in_mode}' | grep -q '1'; then
    # Currently in copy mode, exit to normal mode
    tmux send-keys -X cancel
else
    # Currently in normal mode, enter copy mode
    tmux copy-mode
fi
