{pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    ffmpegthumbnailer
    xarchiver
    xfce4-exo
    poppler
    evince
    libgsf
    imv
  ];
}
