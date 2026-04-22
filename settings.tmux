# Pane and window numbering
set-option -g renumber-windows on
set-option -g base-index 1
set-option -g pane-base-index 1

# Windows are opened/splited in the same path of the current pane
bind  c  new-window      -c "#{pane_current_path}"
bind '"' split-window    -c "#{pane_current_path}"
bind  %  split-window -h -c "#{pane_current_path}"

# VI mode
set-option -g mode-keys vi

# Don't rename windows automatically
set-option -g allow-rename off

# Make tmux-history-copy readily available
bind y run-shell tmux-history-copy

# Mouse mode and pane synchronization toggles with display messages
bind-key m set-option -g mouse \; display-message "Mouse mode: #{?mouse,ON,OFF}"
bind-key S set-window-option synchronize-panes \; display-message "Synchronize panes: #{?pane_synchronized,ON,OFF}"
