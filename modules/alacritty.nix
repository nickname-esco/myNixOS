{ ... }:

{
  programs.alacritty = {
    enable = true;
    settings = {
      font = {
        size = 12.5;
        offset = {
          x = 0;
          y = 1;
        };
        glyph_offset = {
          x = 0;
          y = 0;
        };
        normal = {
          family = "IBM Plex Mono";
          style = "Regular";
        };
        bold = {
          family = "IBM Plex Mono";
          style = "Bold";
        };
        italic = {
          family = "IBM Plex Mono";
          style = "Italic";
        };
        bold_italic = {
          family = "IBM Plex Mono";
          style = "Italic";
        };
      };
      window = {
        decorations = "none";
        padding = {
          x = 10;
          y = 10;
        };
        blur = true;
        opacity = 0.75;
        dynamic_padding = true;
      };
      cursor = {
        style = {
          shape = "Block";
          blinking = "Always";
        };
        thickness = 0.18;
        blink_interval = 500;
      };
      scrolling = {
        history = 20000;
        multiplier = 2;
      };
      bell = {
        animation = "EaseOutExpo";
        duration = 120;
        color = "#1b2632";
      };
      colors = {
        primary = {
          background = "#0a0e13";
          foreground = "#cfd6dd";
        };
        cursor = {
          text = "#0a0e13";
          cursor = "#00eaff";
        };
        selection = {
          text = "#e6edf3";
          background = "#1b2632";
        };
        normal = {
          black = "#0a0e13";
          red = "#ff4c4c";
          green = "#5af78e";
          yellow = "#f3f99d";
          blue = "#57c7ff";
          magenta = "#ff6ac1";
          cyan = "#9aedfe";
          white = "#cfd6dd";
        };
        bright = {
          black = "#4b5263";
          red = "#ff6e6e";
          green = "#7bffaf";
          yellow = "#fdfdbd";
          blue = "#7ad9ff";
          magenta = "#ff9bd6";
          cyan = "#b6ffff";
          white = "#ffffff";
        };
      };
    };
  };
}
