{
  inputs,
  lib,
  ...
}: let
  noctaliaSettings =
    builtins.fromJSON (builtins.readFile ./settings.json);
in {
  imports = [
    inputs.noctalia.homeModules.default
  ];

  programs.noctalia-shell = {
    enable = true;

    settings = lib.recursiveUpdate noctaliaSettings {
      bar = {
        backgroundOpacity = 0.75;
      };

      ui = {
        panelBackgroundOpacity = 0.82;
      };

      colorSchemes = {
        useWallpaperColors = false;
        predefinedScheme = "GitHub Dark";
        darkMode = true;
      };
    };
  };
}
