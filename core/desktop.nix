{pkgs, ...}: {
  programs = {
    niri = {
      enable = true;
    };
  };
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
        wayland.enable = true;
      };
    };

    # Keep Plasma for now as a fallback session.
    desktopManager = {
      plasma6 = {
        enable = true;
      };
    };
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kate
    elisa
    konsole
  ];
}
