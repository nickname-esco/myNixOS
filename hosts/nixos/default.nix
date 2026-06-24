{
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak

    ../../features/base
    ../../features/desktop
    ../../features/niri
    ../../features/gaming
    ../../features/services
    ../../features/virtualisation

    ./hardware-configuration.nix
    ./users.nix
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
