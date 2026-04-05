{
  pkgs,
  ...
}:
{
  imports = [
    ./core
    ./hardware-configuration.nix
  ];

  # Nix-ld and lang tools
  programs = {
    nix-ld = {
      enable = true;
      libraries = with pkgs; [
        go
        zlib
        gopls
        stdenv.cc.cc.lib
      ];
    };
  };

  system.stateVersion = "25.11";
}
