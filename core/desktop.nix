{
  pkgs,
  ...
}:
{
  services = {
    xserver = {
      xkb = {
        layout = "us";
        variant = "";
      };
      excludePackages = [ pkgs.xterm ];
    };
    displayManager = {
      cosmic-greeter = {
        enable = true;
      };
    };
    desktopManager = {
      cosmic = {
        enable = true;
      };
    };
    system76-scheduler = {
      enable = true;
    };
  };
  environment = {
    cosmic = {
      excludePackages = with pkgs; [
        cosmic-edit
      ];
    };
    loginShellInit = ''
      [[ "$(tty)" = "/dev/tty1" ]] && exec /home/bahri/gs.sh
    '';
  };
}
