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

    displayManager = {
      sddm = {
        enable = true;
      };
    };
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
