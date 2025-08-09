{ me, pkgs, ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ me.user.userName ];
  users.users.${me.user.userName}.extraGroups = [ "libvirtd" ];
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
