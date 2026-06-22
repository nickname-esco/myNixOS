{
  pkgs,
  inputs,
  ...
}: let
  thyxPackage = pkgs.callPackage (inputs.thyx + "/default.nix") {};

  thyxCatppuccinBlush = thyxPackage.overrideAttrs (old: {
    postInstall =
      (old.postInstall or "")
      + ''
        cat > "$out/share/sddm/themes/thyx/theme.conf" <<'EOF'
        [General]
        Font="JetBrainsMono Nerd Font"
        FontSize="12"
        HourFormat="hh:mm AP"
        DateFormat="dddd d MMMM"
        Background="backgrounds/blush.jpg"

        AnimationDuration="300"
        AnimationEasing="OutQuart"
        AutoFingerprintOnLoad=false

        DateTextColor="#bac2de"
        TimeTextColor="#cdd6f4"

        FormBackgroundColor="#1e1e2e"
        LoginFieldBackgroundColor="#313244"
        PasswordFieldBackgroundColor="#313244"

        LoginFieldTextColor="#cdd6f4"
        PasswordFieldTextColor="#cdd6f4"
        PlaceholderTextColor="#a6adc8"

        LoginButtonTextColor="#1e1e2e"
        LoginButtonBackgroundColor="#cba6f7"

        SystemButtonsIconsColor="#cdd6f4"
        EnvironmentButtonTextColor="#cdd6f4"

        DropdownTextColor="#cdd6f4"
        DropdownSelectedTextColor="#1e1e2e"
        DropdownBackgroundColor="#181825"
        DropdownSelectedBackgroundColor="#cba6f7"
        DropdownBorderColor="#45475a"
        DropdownSelectedBorderColor="#cba6f7"

        HoverLoginButtonBackgroundColor="#b4befe"
        HoverSystemButtonsIconsColor="#cba6f7"
        HoverEnvironmentButtonTextColor="#cba6f7"

        Blur="0.2"
        FormPosition="center"
        EOF
      '';
  });
in {
  services.displayManager.sddm.thyx = {
    enable = true;
    package = thyxCatppuccinBlush;
  };
}
