{...}: {
  imports = [
    ./modules
  ];

  home = {
    username = "bahri";
    homeDirectory = "/home/bahri";
    stateVersion = "25.11";
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
    NIXOS_OZONE_WL = "1";
    WRL_NO_HARDWARE_CURSORS = "1";
    GTK_THEME = "catppuccin-mocha-mauve-standard:dark";
  };

  systemd.user.sessionVariables = {
    GTK_THEME = "catppuccin-mocha-mauve-standard:dark";
  };

  programs.home-manager.enable = true;
}
