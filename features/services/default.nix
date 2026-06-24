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

      extraConfig.pipewire."92-low-latency" = {
        "context.properties" = {
          "default.clock.rate" = 48000;
          "default.clock.quantum" = 256;
          "default.clock.min-quantum" = 256;
          "default.clock.max-quantum" = 256;
        };
      };

      extraConfig.pipewire-pulse."92-low-latency" = {
        context.modules = [
          {
            name = "libpipewire-module-protocol-pulse";
            args = {
              pulse.min.req = "256/48000";
              pulse.default.req = "256/48000";
              pulse.max.req = "256/48000";
              pulse.min.quantum = "256/48000";
              pulse.max.quantum = "256/48000";
            };
          }
        ];
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
