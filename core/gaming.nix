{
  pkgs,
  lib,
  ...
}: {
  nixpkgs.overlays = [
    (final: prev: {
      steam = prev.steam.override {
        extraArgs = "-cef-disable-gpu-compositing";
      };
    })
  ];

  security.wrappers.bwrap = lib.mkForce {
    owner = "root";
    group = "root";
    source = "${pkgs.bubblewrap}/bin/bwrap";
    setuid = false;
  };

  programs = {
    steam = {
      enable = true;

      gamescopeSession = {
        enable = true;

        args = [
          "--rt"
          "--expose-wayland"
          "-W"
          "1920"
          "-H"
          "1080"
          "-r"
          "60"
        ];

        steamArgs = [
          "-tenfoot"
          "-pipewire-dmabuf"
        ];
      };

      extraCompatPackages = [
        pkgs.proton-ge-bin
      ];
    };

    gamemode = {
      enable = true;
    };

    gamescope = {
      enable = true;
      capSysNice = true;
    };
  };
}
