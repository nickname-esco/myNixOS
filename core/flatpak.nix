{ ... }:
{
  services = {
    flatpak = {
      enable = true;
      packages = [
        "com.stremio.Stremio"
        "app.zen_browser.zen"
        "it.mijorus.gearlever"
        "com.vysp3r.ProtonPlus"
        "com.parsecgaming.parsec"
        "net.mullvad.MullvadBrowser"
        "com.github.tchx84.Flatseal"
        "io.github.flattool.Warehouse"
      ];

      update.auto = {
        enable = true;
        onCalendar = "weekly";
      };
    };
  };
}
