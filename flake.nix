{
  description = "Bahri's Flake!";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.11";
    home-manager = {
      url = "github:nix-community/home-manager/release-25.11";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nixvim = { 
     url = "github:nix-community/nixvim/nixos-25.11";
     inputs.nixpkgs.follows = "nixpkgs";
  };

    nix-flatpak.url = "github:gmodena/nix-flatpak";
  };

  outputs = {
    nixpkgs,
    home-manager,
    nix-flatpak,
    nixvim,
    ...
  } @ inputs: let
    lib = nixpkgs.lib;
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    username = "bahri";
    name = "Bahri";
  in {
    nixosConfigurations = {
      nixos = lib.nixosSystem {
        inherit system;
        modules = [
          nix-flatpak.nixosModules.nix-flatpak
          ./configuration.nix
        ];
        specialArgs = {
          inherit username name;
        };
      };
    };

    homeConfigurations = {
      bahri = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          ./home.nix
        ];
        extraSpecialArgs = {
          inherit username name inputs;
        };
      };
    };
  };
}
