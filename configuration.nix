{pkgs, ...}: {
  imports = [
    ./core
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

  system.stateVersion = "25.11";
}
