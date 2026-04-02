{
  pkgs,
  ...
}:
{
  users.users.bahri = {
    isNormalUser = true;
    shell = pkgs.zsh;
    ignoreShellProgramCheck = true;
    description = "Bahri";
    extraGroups = [
      "networkmanager"
      "wheel"
      "libvirtd"
      "flatpak"
      "docker"
    ];
    packages = with pkgs; [
      google-chrome
    ];
  };

  security.sudo.execWheelOnly = true;
}
