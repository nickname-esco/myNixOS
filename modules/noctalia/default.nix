{
  inputs,
  lib,
  ...
}: let
  noctaliaSettings =
    builtins.fromJSON (builtins.readFile ./settings.json);

  weatherWidget = {
    id = "Weather";
  };

  rightWidgets =
    if builtins.any (widget: (widget.id or "") == "Weather") noctaliaSettings.bar.widgets.right
    then noctaliaSettings.bar.widgets.right
    else [weatherWidget] ++ noctaliaSettings.bar.widgets.right;
in {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = lib.recursiveUpdate noctaliaSettings {
      bar = {
        backgroundOpacity = 0.75;

        widgets = {
          right = rightWidgets;
        };
      };

      ui = {
        panelBackgroundOpacity = 0.82;
      };

      location = {
        name = "Melbourne";
        weatherEnabled = true;
        weatherShowEffects = true;
        useFahrenheit = false;
        use12hourFormat = true;
        autoLocate = true;
      };

      colorSchemes = {
        useWallpaperColors = false;
        predefinedScheme = "GitHub Dark";
        darkMode = true;
      };
    };
  };
}
