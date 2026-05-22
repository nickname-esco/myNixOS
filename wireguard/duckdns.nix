{pkgs, ...}: {
  systemd = {
    services.duckdns = {
      description = "DuckDNS Dynamic DNS Updater";
      after = ["network-online.target"];
      wants = ["network-online.target"];
      serviceConfig = {
        Type = "oneshot";
        RemainAfterExit = true;
        ExecStart = pkgs.writeShellScript "duckdns-update" ''
          TOKEN=$(cat /etc/duckdns/token)
          ${pkgs.curl}/bin/curl -s \
            "https://www.duckdns.org/update?domains=mynixos&token=$TOKEN&ip="
        '';
      };
    };

    timers.duckdns = {
      description = "DuckDNS Update Timer";
      wantedBy = ["timers.target"];
      timerConfig = {
        OnBootSec = "1min";
        OnUnitActiveSec = "5min";
        Unit = "duckdns.service";
      };
    };
  };
}
