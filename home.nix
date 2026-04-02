{
  ...
}:
{
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
    TERMINAL = "alacritty";
    NIXOS_OZONE_WL = "1";
    WRL_NO_HARDWARE_CURSORS = "1";
  };

  programs.home-manager.enable = true;
}
