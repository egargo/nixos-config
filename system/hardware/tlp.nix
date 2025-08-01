{
  services.power-profiles-daemon.enable = false;
  services.thermald.enable = true;

  services.tlp = {
    enable = true;
    settings = {
      START_CHARGE_THRESH_BAT0 = 20;
      STOP_CHARGE_THRESH_BAT0 = 80;
      START_CHARGE_THRESH_BAT1 = 20;
      STOP_CHARGE_THRESH_BAT1 = 80;
    };
  };
}
