{
  config,
  pkgs,
  ...
}: {
  wayland.windowManager.hyprland.settings = {
    exec = [
      "${pkgs.swaybg}/bin/swaybg -i ${config.wallpaper} --mode fill"
    ];
    exec-once = [
      "${pkgs.waybar}/bin/waybar && ${pkgs.mako}/bin/mako"
			"[workspace 7 silent] firefox"
			"[workspace 8 silent] discord"
    ];
  };
}
