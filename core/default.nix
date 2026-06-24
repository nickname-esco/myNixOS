{...}: {
  imports = [
    ../features/niri
    ../features/desktop
    ../features/base/boot.nix
    ../features/base/unfree.nix
    ../features/gaming
    ../features/base/nix.nix
    ../features/desktop/flatpak.nix
    ../features/base/network.nix
    ../features/base/hardware.nix
    ../features/base/packages.nix
    ../features/services
    ../features/virtualisation
  ];
}
