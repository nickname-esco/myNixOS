{pkgs, ...}: {
  imports = [
    ./duckdns.nix
  ];

  environment.systemPackages = [pkgs.wireguard-tools];

  networking = {
    wireguard.interfaces = {
      wg0 = {
        ips = ["10.0.0.1/24"];
        listenPort = 51820;
        privateKeyFile = "/etc/wireguard/server.key";

        postSetup = ''
          ${pkgs.nftables}/bin/nft add table ip wg_nat
          ${pkgs.nftables}/bin/nft add chain ip wg_nat postrouting { type nat hook postrouting priority 100 \; }
          ${pkgs.nftables}/bin/nft add rule ip wg_nat postrouting oifname "wlo1" masquerade
        '';

        postShutdown = ''
          ${pkgs.nftables}/bin/nft delete table ip wg_nat
        '';

        peers = [
          {
            # Phone
            publicKey = "SWu37BJZWoymIkjyWVPQqhjquMdrOqJp3n+5zMdlsyE=";
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
