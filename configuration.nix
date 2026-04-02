{
  config,
  pkgs,
  ...
}:
{
  imports = [
    ./core
    ./hardware-configuration.nix
  ];

  # Nix-ld and lang tools
  programs.nix-ld.enable = true;
  programs.nix-ld.libraries = with pkgs; [
    go
    gopls
    stdenv.cc.cc.lib
    zlib
  ];

  system.stateVersion = "25.11";
}
