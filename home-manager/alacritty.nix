{
  programs.ghostty = {
    enable = true;
    settings = {
      terminal.shell = {
        program = "/run/current-system/sw/bin/zsh";
        args = ["-l" "-c" "tmux attach || tmux"];
      };

      env = {
        TERM = "xterm-256color";
      };

      window = {
        title = "Alacritty";
        dynamic_title = true;
        dynamic_padding = true;
        startup_mode = "Windowed";
        decorations_theme_variant = "Dark";
        resize_increments = true;
      };

      window = {
        class = {
          instance = "Alacritty";
          general = "Alacritty";
        };
        padding = {
          x = 6;
          y = 6;
        };
      };

      scrolling.history = 9999;

      font = {
        size = 12;
        normal = {
          family = "IosevkaNerdFontMono";
          style = "Regular";
        };
        offset = {
          x = 0;
          y = 0;
        };
        font.glyph_offset = {
          x = 0;
          y = 0;
        };
      };

      mouse = {
        hide_when_typing = false;
        bindings = {
          mouse = "Middle";
          action = "PasteSelection";
        };
      };

      selection.semantic_escape_chars = ",│`|:\"' ()[]{}<>";

      cursor = {
        unfocused_hollow = true;
        style.blinking = "On";
      };

      colors = {
        bright = {
          black = "#444b6a";
          blue = "#7da6ff";
          cyan = "#0db9d7";
          green = "#b9f27c";
          magenta = "#bb9af7";
          red = "#ff7a93";
          white = "#acb0d0";
          yellow = "#ff9e64";
        };

        normal = {
          black = "#32344a";
          blue = "#7aa2f7";
          cyan = "#449dab";
          green = "#9ece6a";
          magenta = "#ad8ee6";
          red = "#f7768e";
          white = "#787c99";
          yellow = "#e0af68";
        };

        primary = {
          background = "#1a1b26";
          foreground = "#a9b1d6";
        };
      };


      keyboard.bindsing = [
        {
          key = "NumpadAdd";
          mods = "Control";
          action = "IncreaseFontSize";
        }

        {
          key = "NumpadSubtract";
          mods = "Control";
          action = "DecreaseFontSize";
        }

        {
          key = "Key0";
          mods = "Control";
          action = "ResetFontSize";
        }
      ];

      general.live_config_reload = true;
    };
  };
}

