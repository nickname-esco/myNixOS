{pkgs, ...}: {
  # Display Manager
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = [pkgs.xterm];
    };
    displayManager = {
      sddm = {
        enable = true;
        wayland = {
          enable = true;
        };
      };
    };
    gvfs = {
      enable = true;
    };
    tumbler = {
      enable = true;
    };
  };
  # Programs
  programs = {
    xfconf.enable = true;
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  # Default Applications
  xdg.mime = {
    enable = true;
    defaultApplications = {
      "inode/directory" = "thunar.desktop";
    };
  };
  # Packages
  environment.systemPackages = with pkgs; [
    ffmpegthumbnailer
    xarchiver
  ];
}
