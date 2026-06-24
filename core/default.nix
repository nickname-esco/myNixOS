{...}: {
  imports = [
    ./niri
    ./desktop
    ../features/base/boot.nix
    ./unfree.nix
    ./gaming.nix
    ../features/base/nix.nix
    ./flatpak.nix
    ../features/base/network.nix
    ./hardware.nix
    ./packages.nix
    ./services.nix
    ./virtualisation.nix
  ];
}
