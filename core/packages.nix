{
  pkgs,
  ...
}:
{
  environment.shells = with pkgs; [ zsh ];

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
    lazydocker
    mediawriter
    virt-viewer
    virt-manager
    vulkan-loader
    docker-client
    docker-compose
    bitwarden-desktop
  ];
}
