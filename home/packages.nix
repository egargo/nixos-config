{ pkgs, ... }:

{
  home.packages = with pkgs; [
    anydesk
    dbeaver-bin
    gimp3
    inkscape
    shotcut
    libreoffice
  ];
}
