{ ... }:
{
  imports = [
    ./user.nix
    ./boot.nix
    ./unfree.nix
    ./gaming.nix
    ./system.nix
    ./flatpak.nix
    ./desktop.nix
    ./network.nix
    ./hardware.nix
    ./packages.nix
    ./services.nix
    ./virtualisation.nix
  ];
}
