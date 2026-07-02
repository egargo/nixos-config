{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  environment = {
    systemPackages = with pkgs; [
      protonup-ng
    ];

    sessionVariables = {
      STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/clint/.steam/root/compatibilitytools.d";
    };
  };

  programs.gamemode.enable = true;
}
