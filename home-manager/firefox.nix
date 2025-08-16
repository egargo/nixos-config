{ me, inputs, ...}:

{
  programs.firefox = {
    enable = true;
    languagePacks = [ "en-US" ];
    profiles = {
      bee = {
        name = "bee";
        id = 0;
        extensions = {
          force = true;
          packages = with inputs.firefox-addons.packages.${me.system}; [
            bitwarden
            ublock-origin
          ];
          settings = {
            "uBlock0@raymondhill.net".settings = {
              selectedFilterLists = [
                "ublock-filters"
                "ublock-badware"
                "ublock-privacy"
                "ublock-unbreak"
                "ublock-quick-fixes"
              ];
            };
          };
        };
        settings = {
          "browser.cache.disk.enable" = false;
          "browser.ml.enable" = false;
          "browser.ml.chat.enabled" = false;
          "browser.profiles.enabled" = true;
          "browser.tabs.closeWindowWithLastTab" = true;
          "browser.tabs.warnOnClose" = true;
          "extensions.autoDisableScopes" = 0;
          "media.ffmpeg.vaapi.enabled" = true;
          "media.av1.enabled" = false;
          "media.hardware-video-decoding.force-enabled" = true;
          "widget.wayland.opaque-region.enabled" = false;
        };
      };
    };
    policies = {
      DisableFirefoxAccounts = true;
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableSetDesktopBackground = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      EnableTrackingProtection = {
        Value = true;
        Cryptomining = true;
        Fingerprinting = true;
        EmailTracking = true;
        Exceptions = [
          "https://netflix.com"
        ];
      };
      FirefoxHome = {
        Search = false;
        TopSites = false;
        SponsoredTopSites = false;
        Highlights = false;
        Pocket = false;
        SponsoredPocket = false;
        Snippets = false;
        Locked = true;
      };
      FirefoxSuggest = {
        WebSuggestions = false;
        SponsoredSuggestions = false;
        ImproveSuggest = false;
        Locked = true;
      };
      HardwareAcceleration = true;
      Homepage = {
        Locked = true;
        StartPage = "none";
      };
      HttpsOnlyMode = "force_enabled";
      NetworkPrediction = false;
      NewTabPage = false;
      NoDefaultBookmarks = true;
      OfferToSaveLogins = false;
      OfferToSaveLoginsDefault = false;
      Permissions = {
        Notifications = {
          Allow = [ "https://www.facebook.com" ];
          BlockNewRequests = true;
        };
      };
      PostQuantumKeyAgreementEnabled = true;
      SanitizeOnShutdown = {
        Cache = true;
        Cookies = false;
        FormData = true;
        History = true;
        Sessions = false;
        SiteSettings = true;
        Locked = true;
      };
      SearchEngines = {
        Default = "Google";
        PreventInstalls = true;
        Remove = [
          "Bing"
          "DuckDuckGo"
          "Ecosia"
          "Wikipedia"
        ];
      };
      SearchSuggestEnabled = false;
      ShowHomeButton = false;
      TranslateEnabled = false;
    };
  };
}
