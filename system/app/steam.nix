{ me, pkgs, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  environment = {
    systemPackages = with pkgs; [
      protonup
    ];

    sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/${me.user.userName}/.steam/root/compatibilitytools.d";
    };
  };

  programs.gamemode.enable = true;
}
