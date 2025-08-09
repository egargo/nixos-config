{
  nix = {
    # gc = {
    #   automatic = true;
    #   dates = "daily";
    #   options = "--delete-older-than 7d";
    # };

    settings = {
      auto-optimise-store = true;
      experimental-features = [ "nix-command" "flakes" ];
    };
  };

  nixpkgs.config.allowUnfree = true;

  programs.nix-ld.enable = true;
}
