{ me, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.${me.username} = {
      isNormalUser = true;
      home = "/home/${me.username}";
      description = me.username;
      extraGroups = [
        "docker"
        "jackaudio"
        "networkmanager"
        "video"
        "wheel"
      ];
    };
  };
}
