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
        cosmic-player
        cosmic-term
      ];
    };
    loginShellInit = ''[[ "$(tty)" = "/dev/tty1" ]] && [ -x /home/bahri/gs.sh ] && /home/bahri/gs.sh   '';
  };
}
