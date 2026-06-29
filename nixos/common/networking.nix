{
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  networking = {
    dhcpcd.enable = false;
    nameservers = [
      "8.8.8.8"
      "8.8.4.4"
      "2001:4860:4860::8888"
      "2001:4860:4860::8844"
    ];
    networkmanager = {
      enable = true;
      dns = "systemd-resolved";
    };
    useDHCP = false;
  };

  time.timeZone = "Asia/Manila";

  services.resolved = {
    enable = true;
    settings = {
      Resolve = {
        DNS = [
          "8.8.8.8"
          "8.8.4.4"
          "2001:4860:4860::8888"
          "2001:4860:4860::8844"
        ];
        DNSSEC = "true";
        DNSOverTLS = "true";
        Domains = [ "~." ];
        FallbackDns = [ ];
      };
    };
  };

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}
