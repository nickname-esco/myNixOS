{pkgs, ...}: {
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

        package = pkgs.kdePackages.sddm;

        extraPackages = with pkgs; [
          kdePackages.qtvirtualkeyboard
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
  };
}
