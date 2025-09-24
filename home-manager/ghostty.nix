{
  programs.ghostty = {
    enable = true;
    settings = {
      app-notifications = false;
      command = "tmux attach || tmux";
      font-family = "Iosevka Nerd Font";
      font-size = 12;
      maximize = true;
      theme = "Kanagawa Wave";
      # window-height = 64;
      # window-width = 212;
    };
  };
}

