{
  pkgs,
  ...
}:
{
  services = {
    xserver = {
      enable = true;
      xkb = {
        layout = "au";
        variant = "";
      };

      excludePackages = [ pkgs.xterm ];
    };

    # KDE Plasma
    displayManager = {
      sddm = {
        enable = true;
        plasma6 = {
          enable = true;
        };
      };
    };
  };

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kate
    elisa
    konsole
  ];

  environment.loginShellInit = ''
    [[ "$(tty)" = "/dev/tty1" ]] && exec ./gs.sh
  '';
}
