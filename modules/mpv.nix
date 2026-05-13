{pkgs, ...}: {
  programs.mpv = {
    enable = true;

    scripts = with pkgs.mpvScripts; [
      uosc
      thumbfast
      mpris
      sponsorblock-minimal
    ];

    config = {
      osc = false;

      vo = "gpu-next";
      gpu-api = "auto";

      save-position-on-quit = true;
      keep-open = true;
      autofit-larger = "90%x90%";

      # Better YouTube defaults
      ytdl-format = "bestvideo[height<=1080]+bestaudio/best[height<=1080]/best";
    };

    scriptOpts = {
      ytdl_hook = {
        ytdl_path = "${pkgs.yt-dlp}/bin/yt-dlp";
      };
    };
  };

  home.packages = with pkgs; [
    yt-dlp
  ];
}
