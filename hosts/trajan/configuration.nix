{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../nixos/app/docker.nix
    ../../nixos/app/flatpak.nix
    ../../nixos/app/teamviewer.nix
    ../../nixos/app/git.nix
    ../../nixos/app/nvim.nix
    ../../nixos/app/tmux.nix
    ../../nixos/app/virtualization.nix
    ../../nixos/common
    ../../nixos/de/gnome.nix
    ../../nixos/hardware/audio.nix
    ../../nixos/hardware/battery.nix
    ../../nixos/hardware/bluetooth.nix
    ../../nixos/hardware/nvidia.nix
    ../../nixos/hardware/openrgb.nix
    ../../nixos/hardware/printing.nix
    ../../nixos/security/gpg.nix
    ../../nixos/security/rtkit.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages_latest;
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  };

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "24.11"; # Did you read the comment?
}
