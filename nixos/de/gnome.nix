{ pkgs, ... }:

{
  services.libinput.enable = true;

  services.xserver = {
    enable = true;
    xkb = {
      layout = "us";
      variant = "";
    };
  };

  services = {
    desktopManager.gnome.enable = true;
    displayManager = {
      defaultSession = "gnome";
      gdm.enable = true;
    };
    gnome.gcr-ssh-agent.enable = true;
  };

  environment = {
    gnome.excludePackages = with pkgs; [
      epiphany
      evolution
      geary
      gnome-connections
      gnome-contacts
      gnome-console
      gnome-font-viewer
      gnome-logs
      gnome-maps
      gnome-music
      gnome-software
      gnome-tour
      gnome-weather
      seahorse
      totem
      yelp
    ];
  };
}
