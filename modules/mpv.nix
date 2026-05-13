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
      # Needed because uosc replaces mpv's default on-screen controls
      osc = false;

      # Better video output
      vo = "gpu-next";
      gpu-api = "auto";

      # Good defaults
      save-position-on-quit = true;
      keep-open = true;
      autofit-larger = "90%x90%";
    };
  };
}
