{
  ...
}:
{
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
    # wireless.enable = true; # Do not enable — conflicts with NetworkManager

    firewall = {
      enable = true;

      allowedTCPPorts = [ ];
      allowedUDPPorts = [ ];

      extraInputRules = ''
        # SSH — restricted to local subnet only
        ip saddr 192.168.20.0/24 tcp dport 22 accept

        # Syncthing — restricted to local subnet only
        ip saddr 192.168.20.0/24 tcp dport 22000 accept
        ip saddr 192.168.20.0/24 udp dport { 22000, 21027 } accept
      '';

      logRefusedConnections = true;
      checkReversePath = "strict";
    };
  };
}
