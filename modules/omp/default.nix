{...}: {
  programs.oh-my-posh = {
    enable = true;
    enableFishIntegration = true;

    configFile = ./zen.toml;
  };
}
