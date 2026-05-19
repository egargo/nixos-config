{ pkgs, ... }:

{
  xdg.configFile."niri" = {
    source = ./niri;
    recursive = true;
  };

  programs.fuzzel.enable = true;
  xdg.configFile."fuzzel" = {
    source = ./fuzzel;
    recursive = true;
  };

  services.swayidle = {
    enable = true;
    events = {
      "before-sleep" = "${pkgs.swaylock}/bin/swaylock -c 0a0a0a -fF";
      "lock" = "lock";
    };
    timeouts = [
      {
        timeout = 30;
        command = "${pkgs.swaylock}/bin/swaylock -c 0a0a0a -fF";
      }
      {
        timeout = 60;
        command = "${pkgs.systemd}/bin/systemctl suspend";
      }
    ];
  };

  programs.swaylock.enable = true;

  programs.wlogout.enable = true;
  xdg.configFile."wlogout" = {
    source = ./wlogout;
    recursive = true;
  };

  programs.waybar.enable = true;
  xdg.configFile."waybar" = {
    source = ./waybar;
    recursive = true;
  };

  services.mako.enable = true;

  home.packages = with pkgs; [
    bluez
    bluez-tools
    brightnessctl
    htop
    swaybg
    pamixer
    pavucontrol
    xwayland-satellite
  ];

  services.polkit-gnome.enable = true;
}
