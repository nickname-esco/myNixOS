{
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
        source = "nixos";
        padding = {
          top = 2;
          left = 2;
        };
      };
      modules = [
        "break"
        {
          type = "os";
          key = "󱄅 OS       ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "kernel";
          key = "  ├ 󰌽      ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "packages";
          key = "  ├ 󰏖      ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        {
          type = "shell";
          key = "  └ 󱆃      ";
          keyColor = "38;2;203;166;247"; # Mauve
        }
        "break"
        {
          type = "wm";
          key = "󰕮 WM       ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "wmtheme";
          key = "  ├ 󰏘      ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "icons";
          key = "  ├ 󰀻      ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "cursor";
          key = "  ├ 󰳼      ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "terminal";
          key = "  ├ 󰆍      ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        {
          type = "terminalfont";
          key = "  └ 󰛖      ";
          keyColor = "38;2;137;180;250"; # Blue
        }
        "break"
        {
          type = "host";
          format = "{5} {1} Type {2}";
          key = "󰋩 PC       ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7}";
          key = "  ├ 󰻠      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12} GHz";
          key = "  ├ 󰢮      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "memory";
          key = "  ├ 󰍛      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "disk";
          key = "  ├ 󰋊      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "monitor";
          key = "  ├ 󰍹      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "player";
          key = "  ├ 󰥠      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        {
          type = "media";
          key = "  └ 󰝚      ";
          keyColor = "38;2;250;179;135"; # Peach
        }
        "break"
        {
          type = "uptime";
          key = "󰔚 Uptime   ";
          keyColor = "38;2;148;226;213"; # Teal
        }
      ];
    };
  };
}
