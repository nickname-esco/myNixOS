{ pkgs, ... }:
{
  boot = {
    initrd = {
      verbose = false;
      systemd.enable = true;
      luks.devices = {
        "cryptroot" = {
          device = "/dev/disk/by-label/cryptroot";
          preLVM = true;
        };
      };
    };
    kernelPackages = pkgs.linuxPackages;
    kernelModules = [ "v4l2loopback" ];
    extraModulePackages = [ pkgs.linuxPackages.v4l2loopback ];
    kernelParams = [
      "quiet"
      "udev.log_level=3"
      "systemd.show_status=auto"
    ];
    kernel.sysctl = {
      "vm.max_map_count" = 262144;
      "fs.inotify.max_user_watches" = 524288;
    };
    loader = {
      timeout = 0;
      efi.canTouchEfiVariables = true;
      systemd-boot = {
        enable = true;
        configurationLimit = 5;
        consoleMode = "max";
      };
    };
    plymouth = {
      enable = true;
      theme = "optimus";
      themePackages = with pkgs; [
        (adi1090x-plymouth-themes.override {
          selected_themes = [ "optimus" ];
        })
      ];
    };
    consoleLogLevel = 3;
    binfmt.registrations.appimage = {
      wrapInterpreterInShell = false;
      interpreter = "${pkgs.appimage-run}/bin/appimage-run";
      recognitionType = "magic";
      offset = 0;
      mask = ''\xff\xff\xff\xff\x00\x00\x00\x00\xff\xff\xff'';
      magicOrExtension = ''\x7fELF\x00\x00\x00\x00\x41\x49\x02'';
    };
  };
}
