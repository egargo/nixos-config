{
  users = {
    users."clint" = {
      isNormalUser = true;
      home = "/home/clint";
      description = "Clint";
      extraGroups = [
        "docker"
        "jackaudio"
        "networkmanager"
        "render"
        "video"
        "wheel"
      ];
    };
  };
}
