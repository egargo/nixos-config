{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Development
    cargo rustc
    gcc
    gnumake
    go
    lua
    nodejs
    python313
    postman

    # Desktop
    gimp3
    libreoffice-fresh
  ];
}
