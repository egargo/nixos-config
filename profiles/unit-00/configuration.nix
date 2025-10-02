{ pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../system/app/docker.nix
    ../../system/app/flatpak.nix
    ../../system/app/teamviewer.nix
    ../../system/app/git.nix
    ../../system/app/nvim.nix
    ../../system/app/tmux.nix
    ../../system/app/virtualization.nix
    ../../system/common
    ../../system/de/gnome.nix
    ../../system/hardware/audio.nix
    ../../system/hardware/battery.nix
    ../../system/hardware/bluetooth.nix
    ../../system/hardware/nvidia.nix
    ../../system/hardware/openrgb.nix
    ../../system/hardware/printing.nix
    ../../system/security/gpg.nix
    ../../system/security/rtkit.nix
  ];

  boot = {
    kernelPackages = pkgs.linuxPackages;
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
