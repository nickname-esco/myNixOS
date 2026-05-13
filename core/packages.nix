{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    # Editors
    vim

    # Core CLI / terminal utilities
    wget
    git
    tree
    curl
    unzip
    chafa
    ripgrep
    nix-index

    # Nix tools
    lorri

    # Desktop apps
    discord
    obsidian
    bitwarden-desktop

    # Media / graphics
    gimp
    inkscape
    mediawriter

    # Virtualisation / containers
    virt-viewer
    virt-manager
    podman-compose

    # Graphics / Vulkan
    vulkan-loader
  ];
}
