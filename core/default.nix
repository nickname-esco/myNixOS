{...}: {
  imports = [
    ./niri
    ./desktop
    ../features/base/boot.nix
    ../features/base/unfree.nix
    ./gaming.nix
    ../features/base/nix.nix
    ./flatpak.nix
    ../features/base/network.nix
    ../features/base/hardware.nix
    ../features/base/packages.nix
    ../features/services
    ./virtualisation.nix
  ];
}
