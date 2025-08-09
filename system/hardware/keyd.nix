{
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = [ "*" ];
        settings = {
          main = {
            "f23+leftshift+leftmeta" = "rightcontrol";
          };
        };
      };
    };
  };
}
