{
  programs.starship = {
    enable = true;
    settings = {
      add_newline = false;
      package = {
        disabled = true;
      };

      battery = {
        full_symbol = "🔋 ";
        charging_symbol = "⚡️ ";
        discharging_symbol = "💀 ";
        display = {
          threshold = 10;
          style = "bold red";
        };
      };

      c = {
        format = "via [$symbol($version(-$name) )]($style)";
        version_format = "v$raw";
        symbol = "C ";
        detect_extensions = [ "c" "h" ];
        detect_files = [];
        detect_folders = [];
        commands = [ ["cc" "--version"] ["gcc" "--version"] ["clang" "--version"] ];
        style = "bold 149";
        disabled = false;
      };

      character = {
        success_symbol = "[❯](green bold)";
        error_symbol = "[❯](red bold)";
      };

      directory = {
        read_only = "🔒";
        truncation_length = 1;
        truncate_to_repo = true;
        truncation_symbol = "";
        fish_style_pwd_dir_length = 1;
        style = " red bold";
        format = "[:$path]($style)[$read_only]($read_only_style) ";
      };

      git_branch = {
        format = " [$symbol$branch]($style) ";
        symbol = " ";
        style = "bold yellow";
        #truncation_length = 1;
        truncation_symbol = "";
      };

      git_commit = {
        commit_hash_length = 8;
        format = "[\($hash$tag\)]($style) ";
        style = "bold yellow";
        tag_symbol = "🔖 ";
        only_detached = true;
        #tag_disabled = true;
        tag_max_candidates = 0;
        disabled = false;
      };

      git_state = {
        rebase = "REBASING";
        merge = "MERGING";
        revert = "REVERTING";
        cherry_pick = "CHERRY-PICKING";
        bisect = "BISECTING";
        am = "AM";
        am_or_rebase = "AM/REBASE";
        style = "bold yellow";
        format = "\([$state( $progress_current/$progress_total)]($style)\) ";
        disabled = false;
      };

      git_status = {
        format = "([$all_status$ahead_behind]($style) )";
        conflicted = "=";
        ahead = "⇡";
        behind = "⇣";
        diverged = "⇕";
        up_to_date = "";
        untracked = "?";
        stashed = "*";
        modified = "!";
        staged = "+";
        renamed = "»";
        deleted = "✘";
        # conflicted = " 🏳 ";
        # ahead = " 🏎💨 ";
        # behind = " 😰 ";
        # diverged = " 😵 ";
        # up_to_date = " ✓ ";
        # untracked = " 🤷 ";
        # stashed = " 📦 ";
        # modified = " 📝 ";
        # staged = " [++\($count\)](green) ";
        # renamed = " 👅 ";
        # deleted = " 🗑 ";
        style = "bold yellow";
        ignore_submodules = false;
        disabled = false;
      };

      hostname = {
        ssh_only = false;
        format = "[$hostname]($style)";
        # trim_at = "-";
        style = "blue bold";
        disabled = false;
      };

      line_break = {
        disabled = false;
      };

      nodejs = {
        format = "via [$symbol($version )]($style)";
        version_format = "v$raw";
        symbol = " ";
        detect_extensions = [ "js" "mjs" "cjs" "ts" "mts" "cts" ];
        detect_files = [ "package.json" ".node-version" ];
        detect_folders = [ "node_modules" ];
        style = "blue bold";
        disabled = false;
        not_capable_style = "bold red";
      };

      python = {
        format = "via [$symbol$pyenv_prefix($version )(\($virtualenv\) )]($style)";
        version_format = "v$raw";
        symbol = "🐍 ";
        style = "blue bold";
        pyenv_version_name = false;
        python_binary = [ "python" "python3" "python2" ];
        detect_extensions = [ "py" ];
        detect_files = [
          ".python-version"
          "Pipfile"
          "__init__.py"
          "pyproject.toml"
          "requirements.txt"
          "setup.py"
          "tox.ini"
        ];
        detect_folders = [];
        disabled = false;
      };

      rust = {
        format = "via [$symbol($version )]($style)";
        version_format = "v$raw";
        symbol = "🦀 ";
        detect_extensions = [ "rs" ];
        detect_files = [ "Cargo.toml" ];
        detect_folders = [];
        style = "bold red";
        disabled = false;
      };

      sudo = {
        style = "blue bold";
        # symbol = "👩‍💻 ";
        symbol = "🧙 ";
        disabled = true;
      };

      username = {
        style_user = "blue bold";
        style_root = "black bold";
        format = "[$user]($style)@";
        disabled = false;
        show_always = true;
      };
    };
  };
}
