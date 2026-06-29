{ pkgs, ... }:

{
  programs.neovim = {
    enable = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      cargo
      fd
      fzf
      gcc
      gnumake
      go
      ripgrep
      tree-sitter
      unzip
    ];
    sideloadInitLua = true;
    vimAlias = true;
    viAlias = true;
    waylandSupport = true;
    withNodeJs = true;
    withPython3 = true;
    withRuby = false;
  };
}
