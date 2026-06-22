{
  pkgs,
  inputs,
  ...
}: let
  thyxCatppuccinCinder = import ./thyx.nix {
    inherit pkgs inputs;
  };
in {
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
          enable = false;
        };

        package = pkgs.kdePackages.sddm;

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

        thyx = {
          enable = true;
          package = thyxCatppuccinCinder;
        };
      };
    };
  };
}
