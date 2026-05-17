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
        type = "chafa";
        source = "${config.xdg.configHome}/fastfetch/nixos.png";

        # Medium PNG render.
        # Increase these slightly if the image still looks too rough.
        width = 40;
        height = 20;

        recache = true;

        chafa = {
          # Cleaner and less noisy than the default mixed-symbol render.
          symbols = "space+solid";

          # Use full terminal color support.
          canvasMode = "TRUECOLOR";

          # Better perceptual color matching.
          colorSpace = "DIN99D";

          # Avoid noisy dithering.
          ditherMode = "NONE";

          # Allow foreground/background colors for better shape.
          fgOnly = false;
        };

        padding = {
          top = 1;
          left = 2;
          right = 3;
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
          format = "{5} {1} Type {2}";
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
