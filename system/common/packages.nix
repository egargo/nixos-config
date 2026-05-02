{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    ghostty
    nvtopPackages.intel
    ripgrep
  ];

  services.xserver.excludePackages = with pkgs; [
    xterm
  ];
}
