{
  description = "My NixOS Configurations";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs:
    let
      me = import ./me.nix;
      pkgs = import nixpkgs {
        system = me.system;
        legacyPackages = nixpkgs.legacyPackages.${me.system};
        config.allowUnfree = true;
      };
    in {
      nixosConfigurations.${me.hostName} = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs me; };
        modules = [
          ./profiles/${me.profile}/configuration.nix
        ];
      };

      homeConfigurations.${me.user.userName} = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        extraSpecialArgs = { inherit inputs me; };
        modules = [
          ./home-manager/home.nix
        ];
      };
    };
}
