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

    greetd = {
      enable = false;
    };

    displayManager = {
      ly = {
        enable = true;
        x11Support = true;

        settings = {
          animation = "matrix";
          bigclock = true;
          clock = "%I:%M %p";
          asterisk = "*";

          bg = "0x00000000";
          fg = "0x00CDD6F4";
          border_fg = "0x00CBA6F7";
          error_fg = "0x00F38BA8";
          clock_color = "#CBA6F7";
        };
      };
    };
  };
}
