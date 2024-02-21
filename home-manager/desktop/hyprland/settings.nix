{config, ...}: let
  inherit (config.colorscheme) colors;
in {
  wayland.windowManager.hyprland.settings = {
    input = {
      kb_layout = "fr";
      kb_variant = "bepo";
      kb_options = "caps:swapescape";

      follow_mouse = 1;
      sensitivity = 0;
    };

    general = {
      gaps_in = 5;
      gaps_out = 5;

      border_size = 2;
      "col.active_border" = "0xFF${colors.base0D}";
      "col.inactive_border" = "0xFF${colors.base02}";

      resize_on_border = true;
      hover_icon_on_border = true;

      layout = "dwindle";
    };

    dwindle = {
      pseudotile = true;
      preserve_split = "yes";
    };

    misc.vfr = "on";

    master = {
      new_is_master = true;
    };

    decoration = {
      rounding = 5;

      active_opacity = 0.85;
      inactive_opacity = 0.70;
      fullscreen_opacity = 1.0;

      blur = {
        enabled = true;
        size = 5;
        passes = 3;
        new_optimizations = "on";
      };

      drop_shadow = "yes";
      shadow_range = 4;
      shadow_render_power = 3;
      "col.shadow" = "0x44000000";
      "col.shadow_inactive" = "0x66000000";
    };

    animations = {
      enabled = true;

      bezier = [
        "easein,0.11, 0, 0.5, 0"
        "easeout,0.5, 1, 0.89, 1"
        "easeinback,0.36, 0, 0.66, -0.56"
        "easeoutback,0.34, 1.56, 0.64, 1"
      ];

      animation = [
        "windowsIn,1,3,easeoutback,slide"
        "windowsOut,1,3,easeinback,slide"
        "windowsMove,1,3,easeoutback"
        "workspaces,1,2,easeoutback,slide"
        "fadeIn,1,3,easeout"
        "fadeOut,1,3,easein"
        "fadeSwitch,1,2,easeout"
        "fadeShadow,1,3,easeout"
        "fadeDim,1,3,easeout"
        "border,1,3,easeout"
      ];
    };
  };

  home.sessionVariables = {
    XDG_CURRENT_DESKTOP = "Hyprland";
    XDG_SESSION_TYPE = "wayland";
    XDG_SESSION_DESKTOP = "Hyprland";
    MOW_ENABLE_WAYLAND = 1;
  };
}
