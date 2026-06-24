{...}: {
  imports = [
    ./features/base/home-unfree.nix

    ./features/desktop/gtk.nix
    ./features/noctalia

    ./features/terminal/omp
    ./features/terminal/kitty.nix
    ./features/terminal/fish.nix
    ./features/terminal/tmux.nix
    ./features/terminal/bat.nix
    ./features/terminal/eza.nix
    ./features/terminal/direnv.nix
    ./features/terminal/nh.nix

    ./features/editor/nixvim.nix

    ./features/dev/git.nix
    ./features/dev/lazygit.nix
    ./features/dev/devkit.nix

    ./features/shell/fastfetch
    ./features/shell/htop.nix
    ./features/shell/utils.nix

    ./features/media/mpv.nix
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

  programs.home-manager.enable = true;
}
