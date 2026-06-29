{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    commandLineArgs = [
      "--disable-features=WebRtcAllowInputVolumeAdjustment"
      "--enable-features=TouchpadOverscrollHistoryNavigation"
    ];
    extensions = [
      { id = "eimadpbcbfnmbkopoojfekhnkhdbieeh"; }
      { id = "nngceckbapebfimnlniiiahkandclblb"; }
    ];
  };
}
