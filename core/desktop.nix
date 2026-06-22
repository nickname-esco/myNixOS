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
        theme = "sddm-astronaut-theme";
        package = pkgs.kdePackages.sddm;
        extraPackages = with pkgs; [
          sddm-astronaut
          kdePackages.qtsvg
          kdePackages.qtvirtualkeyboard
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

  programs = {
    xfconf = {
      enable = true;
    };

    thunar = {
      enable = true;
      plugins = with pkgs; [
        thunar-archive-plugin
        thunar-volman
      ];
    };
  };

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

  environment = {
    systemPackages = with pkgs; [
      sddm-astronaut
      ffmpegthumbnailer
      xarchiver
      xfce4-exo
      poppler
      evince
      libgsf
      imv
    ];
  };
}
