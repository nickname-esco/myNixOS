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

    ollama = {
      enable = true;
      host = "127.0.0.1";
      port = 11434;
      openFirewall = false;

      loadModels = [
        "qwen2.5-coder:3b"
      ];
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
