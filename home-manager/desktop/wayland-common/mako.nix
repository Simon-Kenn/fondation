{config, ...}: let
  inherit (config.colorscheme) colors;
in {
  services.mako = {
    enable = true;
    iconPath = "${config.gtk.iconTheme.package}/share/icons/Papirus-Dark";
    font = "${config.fontProfiles.regular.family} 12";
    padding = "10, 20";
    anchor = "top-right";
    width = 400;
    height = 150;
    borderSize = 2;
    defaultTimeout = 12000;
    borderRadius = 5;
    backgroundColor = "#${colors.base00}dd";
    borderColor = "#${colors.base0D}dd";
    textColor = "#${colors.base05}dd";

    extraConfig = ''
      [urgency=high]
      border-color=#${colors.base08}dd
    '';
  };
}
