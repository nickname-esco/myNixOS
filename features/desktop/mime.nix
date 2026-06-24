{...}: {
  xdg.mime = {
    enable = true;

    defaultApplications = {
      "inode/directory" = "thunar.desktop";

      "image/jpeg" = "imv.desktop";
      "image/png" = "imv.desktop";
      "image/gif" = "imv.desktop";
      "image/webp" = "imv.desktop";

      "video/mp4" = "mpv.desktop";
      "video/x-matroska" = "mpv.desktop";
      "video/webm" = "mpv.desktop";

      "application/pdf" = "org.gnome.Evince.desktop";
      "text/plain" = "nvim.desktop";
    };
  };
}
