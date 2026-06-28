{ pkgs, ... }:

{
  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = [ "clint" ];
  users.users."clint".extraGroups = [ "libvirtd" ];
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

  systemd.services.libvirt-virbr0-network = {
    description = "Autostart libvirt default network";
    after = [ "libvirtd.service" ];
    wantedBy = [ "libvirtd.service" ];
    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
      ExecStart = "${pkgs.libvirt}/bin/virsh net-start default";
      ExecStop = "${pkgs.libvirt}/bin/virsh net-destroy default";
    };
  };
}
