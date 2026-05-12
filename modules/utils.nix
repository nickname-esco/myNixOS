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

    # Nix tools
    nix-search-cli
    nix-output-monitor
    nix-prefetch-scripts

    # Shell / prompt tools
    oh-my-posh
    pay-respects

    # Wayland / niri / Noctalia tools
    wl-clipboard
    cliphist
    grim
    slurp
    swappy
    xwayland-satellite

    # Desktop controls
    brightnessctl
    playerctl
    pamixer
    pavucontrol

    # Desktop applets / integration
    networkmanagerapplet
    nautilus

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
