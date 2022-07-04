{ pkgs, ... }:
{
  dconf.settings = {
    "org/gnome/desktop/calendar" = {
      show-weekdate = true;
    };
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      clock-show-seconds = true;
      clock-show-weekday = true;
      gtk-theme = "Adwaita-dark";
      show-battery-percentage = true;
      text-scaling-factor = 1.10;
    };
    "org/gnome/desktop/sound" = {
      events-sound = false;
    };
    "org/gnome/desktop/wm/preferences" = {
      button-layout = "appmenu:minimize,maximize,close";
    };
    "org/gnome/desktop/wm/keybindings" = {
      # Change Alt-Tab shortcut to switch windows.
      switch-applications = ["<Super>Tab"];
      switch-applications-backward = ["<Shift><Super>Tab"];
      switch-windows = ["<Alt>Tab"];
      switch-windows-backward = ["<Shift><Alt>Tab"];
    };
    "org/gnome/shell/extensions/openweather" = {
      city = "48.8588897,2.3200410217200766>Paris, Île-de-France, France métropolitaine, France >0";
    };
  };
  fonts.fontconfig.enable = true;

  home.packages = with pkgs; [
    gnomeExtensions.applications-menu
    gnomeExtensions.disconnect-wifi
    gnomeExtensions.openweather
    gnomeExtensions.places-status-indicator
    gnomeExtensions.removable-drive-menu
    gnomeExtensions.sound-output-device-chooser
    gnomeExtensions.user-themes
    gnomeExtensions.vitals
    gnomeExtensions.workspace-indicator
  ];
}
