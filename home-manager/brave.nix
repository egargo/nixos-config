{ pkgs, ... }:

{
  programs.chromium = {
    enable = true;
    package = pkgs.brave;
    commandLineArgs = [
      "--disable-features=WebRtcAllowInputVolumeAdjustment"
    ];
    extensions = [
      { id = "nngceckbapebfimnlniiiahkandclblb"; }
    ];
  };
}
