{pkgs, ...}: {
  users.users.bahri = {
    isNormalUser = true;
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
    description = "Bahri";
    extraGroups = [
      "i2c"
      "video"
      "wheel"
      "flatpak"
      "libvirtd"
      "networkmanager"
    ];
    packages = with pkgs; [
      google-chrome
    ];
  };

  security.sudo.execWheelOnly = true;
}
