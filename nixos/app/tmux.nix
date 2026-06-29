{
  programs.tmux = {
    enable = true;
    keyMode = "vi";
    shortcut = "Space";
    terminal = "screen-256color";
    extraConfig = ''
      # set -g default-terminal "tmux-256color"
      set -ag terminal-overrides ",xterm-256color:RGB"

      unbind-key C-b
      unbind-key C-a
      set -g prefix 'C-Space'

      set -g mouse on
      set -g status-style bg=default
      unbind -T copy-mode MouseDragEnd1Pane

      set-option -g escape-time 10

      setw -g mode-keys vi
      setw -g window-status-separator " #[fg=white,bright]| #[default]"
      setw -g window-status-format "#[fg=white]#I:#W#[default]"
      setw -g window-status-current-format "#[fg=default,bright]#I:#W#[default]"

      bind "%" split-window -h -c '$HOME}'
      bind '"' split-window -v -c '$HOME}'
      bind "|" split-window -h -c '#{pane_current_path}'
      bind "-" split-window -v -c '#{pane_current_path}'
      bind h select-pane -L
      bind j select-pane -D
      bind k select-pane -U
      bind l select-pane -R

      bind-key -T copy-mode-vi MouseDragEnd1Pane send -X copy-pipe-and-cancel "reattach-to-user-namespace pbcopy"
      set-option -g status on
      set-option -g status-interval 1
      set-option -g status-justify centre
      set-option -g status-keys vi
      set-option -g status-position bottom
      set-option -g status-left-length 20
      set-option -g status-left "#[fg=default,bright]#(whoami)@#h#[default]"
      set-option -g status-right "#[fg=default,bright]%Y.%m.%d %H:%M#[default]"
      set-option -g status-right-length 140
    '';
  };
}
