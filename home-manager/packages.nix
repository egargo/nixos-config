{ pkgs, ... }:

{
  home.packages = with pkgs; [
    ghostty

    # Development
    cargo rustc
    gcc
    gnumake
    go
    lua
    nodejs
    python313
    postman
    # wget

    # Desktop
    gimp3
    libreoffice-fresh

    screenfetch
  ];
}
