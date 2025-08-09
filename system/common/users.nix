{ me, ... }:

{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users = {
    users.${me.user.userName} = {
      isNormalUser = true;
      home = "/home/${me.user.userName}";
      description = me.user.displayName;
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
