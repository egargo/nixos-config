{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    home-manager
    ghostty
    nvtopPackages.intel
  ];

  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
