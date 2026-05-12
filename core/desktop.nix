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
        wayland.enable = true;
      };
    };

    # Keep Plasma for now as a fallback session.
    desktopManager = {
      plasma6 = {
        enable = true;
      };
    };

    # Needed by desktop shells, portals, auth prompts, etc.
    gnome.gnome-keyring.enable = true;
  };

  # Niri Wayland compositor.
  programs.niri = {
    enable = true;
  };

  # Needed for privilege/auth prompts in graphical sessions.
  security.polkit.enable = true;

  # Desktop portals for file pickers, screen sharing, app integration, etc.
  xdg.portal = {
    enable = true;

    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
      xdg-desktop-portal-gnome
    ];
  };

  # Useful system-level Wayland/niri support packages.
  environment.systemPackages = with pkgs; [
    xwayland-satellite
    xdg-desktop-portal
    xdg-desktop-portal-gtk
    xdg-desktop-portal-gnome
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kate
    elisa
    konsole
  ];
}
