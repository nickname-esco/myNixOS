{
  pkgs,
  inputs,
  ...
}: {
  home.packages = [
    inputs.herdr.packages.${pkgs.system}.default
  ];

  xdg.configFile."herdr/config.toml".text = ''
    onboarding = false

    [terminal]
    default_shell = "${pkgs.fish}/bin/fish"
    new_cwd = "follow"
    shell_mode = "auto"

    [theme]
    name = "catppuccin"
    auto_switch = true
    dark_name = "catppuccin"
    light_name = "catppuccin-latte"

    [keys]
    prefix = "ctrl+a"

    focus_pane_left = "prefix+h"
    focus_pane_down = "prefix+j"
    focus_pane_up = "prefix+k"
    focus_pane_right = "prefix+l"

    split_vertical = "prefix+|"
    split_horizontal = "prefix+-"

    close_pane = "prefix+x"

    new_tab = "prefix+c"
    next_tab = "prefix+n"
    previous_tab = "prefix+p"

    [ui]
    sidebar_width = 24     # changed from 32
    agent_panel_sort = "priority"
    show_agent_labels_on_pane_borders = true

    [ui.sound]
    enabled = false

    [ui.toast]
    delivery = "herdr"
  '';
}
