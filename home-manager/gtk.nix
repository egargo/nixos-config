{

  gtk = {
    enable = true;

    gtk3.extraCss = ''
      window, decoration, decoration-overlay, headerbar, .titlebar {
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
      }
    '';

    gtk4.extraCss = ''
      window, decoration, decoration-overlay, headerbar, .titlebar {
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0;
      }
    '';
  };

}
