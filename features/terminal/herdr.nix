{
  pkgs,
  inputs,
  ...
}: {
  home.packages = [
    inputs.herdr.packages.${pkgs.system}.default
  ];

  xdg.configFile."herdr/config.toml".text = ''
    [terminal]
    default_shell = "${pkgs.fish}/bin/fish"
    new_cwd = "follow"

    [theme]
    name = "catppuccin-mocha"

    [keys]
    prefix = "ctrl+a"

    focus_pane_left = "prefix+h"
    focus_pane_down = "prefix+j"
    focus_pane_up = "prefix+k"
    focus_pane_right = "prefix+l"

    split_horizontal = "prefix+|"
    split_vertical = "prefix+-"

    close_pane = "prefix+x"

    new_tab = "prefix+c"
    next_tab = "prefix+n"
    previous_tab = "prefix+p"
  '';
}
