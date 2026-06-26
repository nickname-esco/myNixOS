{...}: {
  imports = [
    ./features/dev
    ./features/media
    ./features/shell
    ./features/editor
    ./features/noctalia
    ./features/terminal
    ./features/desktop/gtk.nix
  ];

  home = {
    username = "bahri";
    homeDirectory = "/home/bahri";
    stateVersion = "26.05";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
    NIXOS_OZONE_WL = "1";
    WLR_NO_HARDWARE_CURSORS = "1";
    GTK_THEME = "catppuccin-mocha-mauve-standard:dark";
  };

  systemd.user.sessionVariables = {
    GTK_THEME = "catppuccin-mocha-mauve-standard:dark";
  };
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;
}
