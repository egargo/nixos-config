{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    brave
    ghostty
    nvtopPackages.intel
  ];

  programs.htop.enable = true;

  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
