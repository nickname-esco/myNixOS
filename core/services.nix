{...}: {
  # Services
  services = {
    gnome = {
      gnome-keyring = {
        enable = true;
      };
    };
    syncthing = {
      enable = true;
      user = "bahri";
      dataDir = "/home/bahri";
      configDir = "/home/bahri/.config/syncthing";
    };
    fwupd = {
      enable = true;
    };
    fstrim = {
      enable = true;
    };
    blueman = {
      enable = true;
    };
    openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        PermitRootLogin = "no";
      };
    };
    printing = {
      enable = false;
    };
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse = {
        enable = true;
      };
      jack = {
        enable = true;
      };
    };
  };
  # Security
  security = {
    rtkit = {
      enable = true;
    };
    pam = {
      services = {
        sddm = {
          enableGnomeKeyring = true;
        };
      };
    };
  };
}
