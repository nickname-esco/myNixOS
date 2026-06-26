{pkgs, ...}: let
  hiddenDesktopEntry = name: exec: ''
    [Desktop Entry]
    Type=Application
    Name=${name}
    Exec=${exec}
    Terminal=false
    NoDisplay=true
    Hidden=true
    Categories=Utility;
  '';
in {
  # Fonts
  fonts.fontconfig.enable = true;

  # Hidden Desktop Entries
  home.file = {
    ".local/share/applications/rofi.desktop".text =
      hiddenDesktopEntry "Rofi" "rofi -show drun";

    ".local/share/applications/org.davatorium.rofi.desktop".text =
      hiddenDesktopEntry "Rofi" "rofi -show drun";

    ".local/share/applications/rofi-theme-selector.desktop".text =
      hiddenDesktopEntry "Rofi Theme Selector" "rofi-theme-selector";

    ".local/share/applications/org.davatorium.rofi-theme-selector.desktop".text =
      hiddenDesktopEntry "Rofi Theme Selector" "rofi-theme-selector";
  };

  # Rofi Theme
  xdg.configFile."rofi/github-dark.rasi".text = ''
    @theme "/dev/null"

    * {
      bg: #0d1117e6;
      bg-alt: #161b22d9;
      fg: #c9d1d9;
      muted: #8b949e;
      accent: #bc8cff;
      blue: #58a6ff;
      surface: #30363db3;

      background-color: transparent;
      text-color: @fg;

      margin: 0;
      padding: 0;
      spacing: 0;
    }

    window {
      location: center;
      anchor: center;

      width: 38%;
      border: 2px;
      border-radius: 14px;
      border-color: @accent;

      background-color: @bg;
    }

    mainbox {
      background-color: transparent;
      children: [inputbar, listview];
      spacing: 12px;
      padding: 16px;
    }

    inputbar {
      background-color: @bg-alt;
      text-color: @fg;

      border: 1px;
      border-color: @surface;
      border-radius: 10px;

      padding: 10px 12px;
      spacing: 10px;

      children: [prompt, entry];
    }

    prompt {
      text-color: @accent;
      padding: 0px 8px 0px 0px;
    }

    entry {
      text-color: @fg;
      placeholder: "Search apps...";
      placeholder-color: @muted;
    }

    listview {
      background-color: transparent;

      columns: 1;
      lines: 8;

      fixed-height: true;
      dynamic: true;

      scrollbar: false;
      spacing: 6px;
    }

    element {
      background-color: transparent;
      text-color: @fg;

      border-radius: 10px;
      padding: 9px 10px;
      spacing: 10px;
    }

    element selected {
      background-color: @accent;
      text-color: #0d1117;
    }

    element-icon {
      size: 24px;
      background-color: transparent;
    }

    element-text {
      background-color: transparent;
      text-color: inherit;
      vertical-align: 0.5;
    }
  '';

  # Rofi
  programs.rofi = {
    enable = true;
    package = pkgs.rofi;

    terminal = "${pkgs.kitty}/bin/kitty";
    font = "JetBrainsMono Nerd Font 12";
    theme = "github-dark";

    # Config
    extraConfig = {
      modi = "drun,run,window";

      show-icons = true;
      icon-theme = "Papirus-Dark";

      display-drun = "Apps";
      display-run = "Run";
      display-window = "Windows";

      drun-display-format = "{name}";

      matching = "fuzzy";
      sorting-method = "normal";
      sort = true;

      disable-history = false;
      case-sensitive = false;
    };
  };
}
