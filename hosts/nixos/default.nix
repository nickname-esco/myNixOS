{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak
    ./users.nix
    ../../core
    ./hardware-configuration.nix
  ];

  programs = {
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        zlib
        stdenv.cc.cc.lib
      ];
    };
  };

  system.stateVersion = "26.05";
}
