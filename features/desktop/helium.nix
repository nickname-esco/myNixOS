{inputs, ...}: {
  imports = [
    inputs.helium.nixosModules.default
  ];

  programs.helium = {
    enable = true;

    flags = [
      "--ozone-platform-hint=auto"
    ];

    policies = {
      # Account / convenience
      PasswordManagerEnabled = true;
      SyncDisabled = false;
      BrowserSignin = 0;

      # Autofill privacy
      AutofillAddressEnabled = false;
      AutofillCreditCardEnabled = false;

      # Background activity
      BackgroundModeEnabled = false;

      # Telemetry
      MetricsReportingEnabled = false;
      UsageReportingEnabled = false;
      CloudReportingEnabled = false;

      # Compatibility
      BlockThirdPartyCookies = false;

      # Security
      SafeBrowsingProtectionLevel = 1;

      # WebRTC compatibility
      WebRtcIPHandling = "default";

      # Disable unnecessary Google services
      TranslateEnabled = false;

      # Privacy
      URLKeyedAnonymizedDataCollectionEnabled = false;
    };
  };
}
