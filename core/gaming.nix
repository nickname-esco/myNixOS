{pkgs, ...}: {
  programs = {
    steam = {
      enable = true;

      package = pkgs.steam.override {
        extraArgs = "-cef-disable-gpu-compositing";
      };

      gamescopeSession.enable = true;
      extraCompatPackages = [pkgs.proton-ge-bin];
    };

    gamemode.enable = true;

    gamescope = {
      enable = true;
      capSysNice = true;
      args = [
        "--rt"
        "--expose-wayland"
      ];
    };
  };
}
