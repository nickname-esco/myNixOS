{
  config,
  pkgs,
  ...
}: let
  inherit (config.lib.formats.rasi) mkLiteral;
in {
  home.packages = [
    pkgs.nerd-fonts.jetbrains-mono
    pkgs.papirus-icon-theme
  ];

  fonts.fontconfig.enable = true;

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;

    terminal = "${pkgs.kitty}/bin/kitty";
    font = "JetBrainsMono Nerd Font 12";

    extraConfig = {
      modi = "drun,run,window";
      show-icons = true;
      icon-theme = "Papirus-Dark";

      display-drun = "Apps";
      display-run = "Run";
      display-window = "Windows";

      drun-display-format = "{icon} {name}";
      matching = "fuzzy";
      sort = true;
      case-sensitive = false;
    };

    theme = {
      "*" = {
        bg = mkLiteral "#1e1e2e";
        bg-alt = mkLiteral "#181825";
        fg = mkLiteral "#cdd6f4";
        muted = mkLiteral "#6c7086";
        mauve = mkLiteral "#cba6f7";
        surface = mkLiteral "#313244";

        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@fg";

        margin = 0;
        padding = 0;
        spacing = 0;
      };

      window = {
        location = mkLiteral "center";
        anchor = mkLiteral "center";

        width = mkLiteral "38%";
        border = mkLiteral "2px";
        border-radius = mkLiteral "14px";
        border-color = mkLiteral "@mauve";

        background-color = mkLiteral "@bg";
      };

      mainbox = {
        background-color = mkLiteral "@bg";
        children = map mkLiteral ["inputbar" "listview"];
        spacing = mkLiteral "12px";
        padding = mkLiteral "16px";
      };

      inputbar = {
        background-color = mkLiteral "@bg-alt";
        text-color = mkLiteral "@fg";

        border = mkLiteral "1px";
        border-color = mkLiteral "@surface";
        border-radius = mkLiteral "10px";

        padding = mkLiteral "10px 12px";
        spacing = mkLiteral "10px";

        children = map mkLiteral ["prompt" "entry"];
      };

      prompt = {
        text-color = mkLiteral "@mauve";
        padding = mkLiteral "0px 8px 0px 0px";
      };

      entry = {
        text-color = mkLiteral "@fg";
        placeholder = "Search apps...";
        placeholder-color = mkLiteral "@muted";
      };

      listview = {
        background-color = mkLiteral "transparent";

        columns = 1;
        lines = 8;

        fixed-height = true;
        dynamic = true;

        scrollbar = false;
        spacing = mkLiteral "6px";
      };

      element = {
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "@fg";

        border-radius = mkLiteral "10px";
        padding = mkLiteral "9px 10px";
        spacing = mkLiteral "10px";
      };

      "element selected" = {
        background-color = mkLiteral "@mauve";
        text-color = mkLiteral "@bg";
      };

      "element-icon" = {
        size = mkLiteral "24px";
        background-color = mkLiteral "transparent";
      };

      "element-text" = {
        background-color = mkLiteral "transparent";
        text-color = mkLiteral "inherit";
        vertical-align = mkLiteral "0.5";
      };
    };
  };
}
