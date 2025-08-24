{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    nvtopPackages.intel
  ];

  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
