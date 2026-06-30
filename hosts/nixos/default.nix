{
  pkgs,
  inputs,
  ...
}: {
  # Module Imports
  imports = [
    inputs.nix-flatpak.nixosModules.nix-flatpak

    # Host Users
    ./users.nix

    # Feature Modules
    ../../features/base
    ../../features/niri
    ../../features/gaming
    ../../features/desktop
    ../../features/services
    ../../features/virtualisation

    # Hardware Configuration
    ./hardware-configuration.nix
  ];

  # Runtime Compatibility
  programs = {
    nix-ld = {
      enable = true;

      libraries = with pkgs; [
        zlib
        stdenv.cc.cc.lib
      ];
    };
  };

  # System Version
  system.stateVersion = "26.05";
}
