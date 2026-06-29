{
  programs.ghostty = {
    enable = true;
    settings = {
      app-notifications = false;
      command = "tmux attach || tmux";
      font-family = "Iosevka Nerd Font";
      font-size = 12;
      theme = "Kanagawa Wave";
      maximize = true;
      # window-padding-x = 12;
      # window-padding-y = 12;
      # window-height = 64;
      # window-width = 212;
    };
  };
}
