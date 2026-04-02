{ ... }:

{
  services = {
    syncthing = {
      enable = true;
      user = "bahri";
      dataDir = "/home/bahri";
      configDir = "/home/bahri/.config/syncthing";
    };

    fwupd.enable = true;
    fstrim.enable = true;
    blueman.enable = true;
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        PermitRootLogin = "no";
      };
    };

    printing.enable = false;
    getty.autologinUser = "bahri";

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };

  security.rtkit.enable = true;
}
