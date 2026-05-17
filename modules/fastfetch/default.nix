{config, ...}: {
  xdg.configFile."fastfetch/nixos.png".source = ./nixos.png;

  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        color = {
          keys = "38;2;180;191;254"; # Lavender
          output = "38;2;205;214;244"; # Text
        };

        separator = " → ";
      };

      logo = {
        # Real PNG rendering for Kitty.
        type = "kitty-direct";

        source = "${config.xdg.configHome}/fastfetch/nixos.png";

        # Smaller than before so the text has more room.
        width = 24;
        height = 12;

        padding = {
          top = 1;
          left = 2;
          right = 1;
        };
      };

      modules = [
        "break"

        {
          type = "os";
          key = "󱄅 OS    ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "kernel";
          key = "  ├ 󰌽   ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "packages";
          key = "  ├ 󰏖   ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "shell";
          key = "  └ 󱆃   ";
          keyColor = "38;2;203;166;247"; # Mauve
        }

        "break"

        {
          type = "wm";
          key = "󰕮 WM    ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "icons";
          key = "  ├ 󰀻   ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "cursor";
          key = "  ├ 󰳼   ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "terminal";
          key = "  ├ 󰆍   ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "terminalfont";
          key = "  └ 󰛖   ";
          keyColor = "38;2;137;180;250"; # Blue
        }

        "break"

        {
          type = "host";
          format = "{5} {2}";
          key = "󰋩 PC    ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7}";
          key = "  ├ 󰻠   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12}";
          key = "  ├ 󰢮   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "memory";
          key = "  ├ 󰍛   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "disk";
          key = "  ├ 󰋊   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "monitor";
          key = "  ├ 󰍹   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "player";
          key = "  ├ 󰥠   ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "media";
          key = "  └ 󰝚   ";
          keyColor = "38;2;250;179;135"; # Peach
        }

        "break"

        {
          type = "uptime";
          key = "󰔚 Uptime ";
          keyColor = "38;2;148;226;213"; # Teal
        }
      ];
    };
  };
}
