{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  environment = {
    systemPackages = with pgks; [
      protonup
    ];

    sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/${me.user.userName}/.steam/root/compatibilitytools.d";
    };
  };

  programs.gamemode.enable = true;
}
