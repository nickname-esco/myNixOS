{...}: {
  programs.virt-manager.enable = true;
  virtualisation = {
    podman = {
      enable = true;
      dockerCompat = true;
    };
    libvirtd.qemu = {
      swtpm.enable = true;
    };
    libvirtd.enable = true;
    spiceUSBRedirection.enable = true;
  };
}
