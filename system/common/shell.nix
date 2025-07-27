{ me, pkgs, ... }:

{
  programs.fzf.fuzzyCompletion = true;

  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;
    shellAliases = {
      open = "xdg-open";
    };
    ohMyZsh = {
      enable = true;
      plugins = [
        "command-not-found"
        "docker"
        "fzf"
        "git"
        "git-prompt"
        "gitignore"
        "golang"
        "rust"
        "safe-paste"
        "shrink-path"
        "vi-mode"
        "zsh-interactive-cd"
        "zsh-navigation-tools"
      ];
      theme = "robbyrussell";
    };
  };

  users = {
    defaultUserShell = pkgs.zsh;
    users.${me.user.userName}.shell = pkgs.zsh;
  };
}
