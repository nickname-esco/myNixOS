{
  pkgs,
  lib,
  ...
}:
{
  home.packages = with pkgs; [
    # DAW
    ardour

    # Drum instruments
    x42-avldrums
    hydrogen

    # Synths
    zynaddsubfx
    yoshimi
    surge

    # Sampler / Orchestral
    sfizz

    # Plugin host, utilities & effects
    carla
    calf
  ];

  # Optional: ensure LV2 plugins are discovered
  home.sessionVariables.LV2_PATH = lib.makeBinPath [
    pkgs.sfizz
    pkgs.x42-avldrums
    pkgs.calf
    pkgs.zynaddsubfx
    pkgs.yoshimi
    pkgs.surge
  ];

  # Optional: set sample library paths for LinuxSampler
  # Using $HOME for maximum compatibility
  home.sessionVariables.LS2_PATH = "$HOME/.local/share/sf2:$HOME/.local/share/sfz";
}
