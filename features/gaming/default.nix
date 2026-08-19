{pkgs, ...}: {
  programs = {
    steam = {
      enable = true;
      gamescopeSession.enable = false;
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
