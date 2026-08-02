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

      # Telemetry / reporting
      # Keep disabled: not required for normal browser operation
      MetricsReportingEnabled = false;
      UsageReportingEnabled = false;
      CloudReportingEnabled = false;

      # Search privacy
      SearchSuggestEnabled = false;

      # Cookie privacy
      BlockThirdPartyCookies = true;

      # Notifications
      DefaultNotificationsSetting = "block";

      # Security
      SafeBrowsingProtectionLevel = 1;
      HttpsOnlyMode = "force_enabled";

      # WebRTC privacy
      WebRtcIPHandling = "disable_non_proxied_udp";

      # Disable unnecessary Google services
      TranslateEnabled = false;
      BrowserLabsEnabled = false;

      # Disable prediction services that send browsing data
      NetworkPredictionOptions = 2;

      # Disable URL leak through alternate error pages
      AlternateErrorPagesEnabled = false;

      # Disable browser suggestions based on history
      URLKeyedAnonymizedDataCollectionEnabled = false;

      # Disable extension developer data reporting
      ExtensionInstallSources = [];
    };
  };
}
