{pkgs, ...}: {
  environment.systemPackages = [pkgs.wireguard-tools];

  networking = {
    nat = {
      enable = true;
      externalInterface = "wlo1";
      internalInterfaces = ["wg0"];
    };

    wireguard.interfaces = {
      wg0 = {
        ips = ["10.0.0.1/24"];
        listenPort = 51820;
        privateKeyFile = "/etc/wireguard/server.key";

        peers = [
          {
            # Phone
            publicKey = "jlIeu12iBxBecXR//3mcMGJ73FIjij+GcnJCrJB+ZSs=";
            allowedIPs = ["10.0.0.2/32"];
          }
        ];
      };
    };
  };

  boot.kernel.sysctl = {
    "net.ipv4.ip_forward" = 1;
  };
}
