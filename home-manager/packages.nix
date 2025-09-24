{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Development
    cargo rustc
    dbeaver-bin
    gcc
    gnumake
    go
    kotlin
    lua
    nodejs
    python313
    postman

    # Desktop
    gimp3
    libreoffice-fresh
  ];
}
