{...}: {
  imports = [
    ./niri
    ./desktop
    ./boot.nix
    ./unfree.nix
    ./gaming.nix
    ./system.nix
    ./flatpak.nix
    ./network.nix
    ./hardware.nix
    ./packages.nix
    ./services.nix
    ./virtualisation.nix
  ];
}
