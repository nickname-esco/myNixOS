{pkgs, ...}: {
  users.users.bahri = {
    isNormalUser = true;
    shell = pkgs.fish;
    ignoreShellProgramCheck = true;
    description = "Bahri";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "flatpak"
    ];
    packages = with pkgs; [
      google-chrome
    ];
  };

  security.sudo.execWheelOnly = true;
}
