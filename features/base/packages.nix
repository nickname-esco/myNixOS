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
    ripgrep
    ddcutil
    nix-index

    # Nix tools
    lorri

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
