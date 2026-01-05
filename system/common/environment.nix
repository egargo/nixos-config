{
  environment.variables.EDITOR = "nvim";

  environment.sessionVariables = {
    GSK_RENDERER = "opengl";
    LIBVA_DRIVER_NAME = "iHD";
    MOZ_ENABLE_WAYLAND = "1";
    NIXOS_OZONE_WL = "1";
    TERMINAL = "ghostty";
    WLR_NO_HARDWARE_CURSORS = "1";
  };
}
