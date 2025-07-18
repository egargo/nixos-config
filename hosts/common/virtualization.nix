{ me, pkgs, ... }:

{
  virtualisation.docker = {
    rootless = {
      enable = true;
      setSocketVariable = true;
    };
  };

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ me.username ];
  users.users.${me.username}.extraGroups = [ "libvirtd" ];
  virtualisation = {
    libvirtd = {
      enable = true;
      qemu.vhostUserPackages = with pkgs; [ virtiofsd ];
    };
    spiceUSBRedirection.enable = true;
  };
  services = {
    qemuGuest.enable = true;
    spice-vdagentd.enable = true;
  };
}
