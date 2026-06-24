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
      enable = true;

      settings = {
        default_session = {
          user = "greeter";

          command = ''
            ${pkgs.greetd.tuigreet}/bin/tuigreet \
              --time \
              --time-format '%A, %d %B  %I:%M %p' \
              --remember \
              --remember-session \
              --user-menu \
              --asterisks \
              --sessions /run/current-system/sw/share/wayland-sessions \
              --xsessions /run/current-system/sw/share/xsessions \
              --theme 'border=magenta;text=white;prompt=magenta;time=cyan;action=blue;button=magenta;container=black;input=white' \
              --cmd niri-session
          '';
        };
      };
    };
  };
}
