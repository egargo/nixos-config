{ pkgs, ... }:

{
  services = {
    displayManager.defaultSession = "xfce";

    xserver = {
      enable = true;
      desktopManager = {
        xterm.enable = false;
        xfce = {
          enable = true;
        };
      };
    };
  };

  environment.xfce.excludePackages = with pkgs; [
    mousepad
    parole
    ristretto
    xfce4-terminal
  ];
}
