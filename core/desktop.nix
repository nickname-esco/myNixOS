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
        theme = "catppuccin-mocha-mauve";
        package = pkgs.kdePackages.sddm;
        extraPackages = with pkgs; [
          kdePackages.qt5compat
          kdePackages.qtmultimedia
        ];
        settings = {
          General = {
            Numlock = "on";
          };
          Theme = {
            CursorTheme = "catppuccin-mocha-dark-cursors";
            CursorSize = "24";
            Font = "JetBrainsMono Nerd Font";
          };
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
    xfconf = {
      enable = true;
    };
    thunar = {
      enable = true;
      plugins = with pkgs.xfce; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };
  # XDG
  xdg = {
    portal = {
      enable = true;
      extraPortals = [pkgs.xdg-desktop-portal-gtk];
      config = {
        common = {
          default = ["gtk"];
        };
      };
    };
    mime = {
      enable = true;
      defaultApplications = {
        "inode/directory" = "thunar.desktop";
        "image/jpeg" = "imv.desktop";
        "image/png" = "imv.desktop";
        "image/gif" = "imv.desktop";
        "image/webp" = "imv.desktop";
        "video/mp4" = "mpv.desktop";
        "video/x-matroska" = "mpv.desktop";
        "video/webm" = "mpv.desktop";
        "application/pdf" = "org.gnome.Evince.desktop";
        "text/plain" = "nvim.desktop";
      };
    };
  };
  # Packages
  environment = {
    systemPackages = with pkgs; [
      catppuccin-sddm
      ffmpegthumbnailer
      xarchiver
      xfce.exo
      poppler
      evince
      libgsf
      imv
    ];
  };
}
