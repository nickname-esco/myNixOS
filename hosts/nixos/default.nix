{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak

    ./users.nix

    ../../features/base
    ../../features/niri
    ../../features/gaming
    ../../features/desktop
    ../../features/services
    ../../features/virtualisation

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
