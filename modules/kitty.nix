{...}: {
  programs.kitty = {
    enable = true;

    font = {
      name = "IBM Plex Mono";
      size = 12.5;
    };

    shellIntegration = {
      enableFishIntegration = true;
      mode = "enabled";
    };

    settings = {
      # Font styling
      bold_font = "IBM Plex Mono Bold";
      italic_font = "IBM Plex Mono Italic";
      bold_italic_font = "IBM Plex Mono Bold Italic";

      # Similar to Alacritty font offset y = 1
      modify_font = "baseline 1";

      # Window
      hide_window_decorations = "yes";
      window_padding_width = 10;
      placement_strategy = "center";

      # Transparency
      background_opacity = "0.75";
      dynamic_background_opacity = true;

      # Cursor
      cursor_shape = "block";
      cursor_blink_interval = "0.5";
      cursor_stop_blinking_after = 0;
      cursor = "#00eaff";
      cursor_text_color = "#0a0e13";

      # Scrolling
      scrollback_lines = 20000;
      wheel_scroll_multiplier = 2;

      # Bell
      enable_audio_bell = false;
      visual_bell_duration = "0.12";
      visual_bell_color = "#1b2632";

      # General behavior
      confirm_os_window_close = 0;
      update_check_interval = 0;
      copy_on_select = false;
      strip_trailing_spaces = "smart";

      # Colors
      foreground = "#cfd6dd";
      background = "#0a0e13";

      selection_foreground = "#e6edf3";
      selection_background = "#1b2632";

      # Normal colors
      color0 = "#0a0e13";
      color1 = "#ff4c4c";
      color2 = "#5af78e";
      color3 = "#f3f99d";
      color4 = "#57c7ff";
      color5 = "#ff6ac1";
      color6 = "#9aedfe";
      color7 = "#cfd6dd";

      # Bright colors
      color8 = "#4b5263";
      color9 = "#ff6e6e";
      color10 = "#7bffaf";
      color11 = "#fdfdbd";
      color12 = "#7ad9ff";
      color13 = "#ff9bd6";
      color14 = "#b6ffff";
      color15 = "#ffffff";
    };

    keybindings = {
      "ctrl+shift+c" = "copy_to_clipboard";
      "ctrl+shift+v" = "paste_from_clipboard";
      "ctrl+shift+plus" = "change_font_size all +1.0";
      "ctrl+shift+minus" = "change_font_size all -1.0";
      "ctrl+shift+0" = "change_font_size all 0";
    };
  };
}
