{pkgs, ...}: {
  home.packages = with pkgs; [
    # Core CLI tools
    jq
    fd
    fzf
    nvd
    w3m
    yazi
    inxi
    lsof
    fuse
    nitch
    zoxide
    killall
    wl-clipboard

    # Nix tools
    nix-search-cli
    nix-output-monitor
    nix-prefetch-scripts

    # Shell / prompt tools
    pay-respects

    # Gaming / Wine
    vkbasalt
    winetricks
    wineWowPackages.staging

    # App compatibility / build helpers
    pkg-config
    appimage-run

    # Apps
    transmission_4
  ];
}
