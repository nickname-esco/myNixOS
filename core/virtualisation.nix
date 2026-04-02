{
  ...
}:
{
  programs.virt-manager.enable = true;

  virtualisation = {
    docker = {
      enable = true;
    };

    libvirtd.qemu = {
      swtpm.enable = true;
    };

    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
