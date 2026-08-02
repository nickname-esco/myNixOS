{
  description = "Bahri's Flake!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = {
      url = "github:nix-community/nixvim/nixos-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-flatpak = {
      url = "github:gmodena/nix-flatpak";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia/v4.7.7";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    helium = {
      url = "github:oxcl/nix-flake-helium-browser";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs: let
    system = "x86_64-linux";

    lib = inputs.nixpkgs.lib;
    pkgs = inputs.nixpkgs.legacyPackages.${system};

    username = "bahri";
    name = "Bahri";
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;

        specialArgs = {
          inherit inputs username name;
        };

        modules = [
          inputs.nix-flatpak.nixosModules.nix-flatpak
          ./hosts/nixos
        ];
      };
    };

    homeConfigurations = {
      bahri = inputs.home-manager.lib.homeManagerConfiguration {
        inherit pkgs;

        extraSpecialArgs = {
          inherit inputs username name;
        };

        modules = [
          ./home.nix
        ];
      };
    };
  };
}
