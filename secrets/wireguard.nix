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
            publicKey = "xQtCOD8aFreL0CRWl4w3ylnCk04DwXpwQ0nPwrR2/yM=";
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
