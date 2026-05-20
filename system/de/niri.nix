{ me, pkgs, ... }:

{
  programs.niri.enable = true;

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.tuigreet}/bin/tuigreet --time --cmd niri-session";
        user = "${me.user.userName}";
      };
    };
  };

  systemd.user.services.niri.enableDefaultPath = false;
}
