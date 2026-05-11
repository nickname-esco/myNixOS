{pkgs, ...}: {
  environment.shells = with pkgs; [zsh];

  environment.systemPackages = with pkgs; [
    vim
    wget
    git
    vlc
    tree
    curl
    gimp
    unzip
    lorri
    chafa
    ripgrep
    discord
    obsidian
    inkscape
    nix-index
    mediawriter
    virt-viewer
    virt-manager
    vulkan-loader
    podman-compose
    bitwarden-desktop
  ];
}
