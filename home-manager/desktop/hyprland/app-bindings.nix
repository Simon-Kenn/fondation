{
  wayland.windowManager.hyprland.settings = {
    bind = [
      "SUPER,Return,exec, alacritty"
      "SUPER,space,exec,wofi -S drun"
      "SUPER,h,exec,wofi -S run"
      "SUPER,l,exec,swaylock --grace 0 --fade-in 0"
    ];
  };
}
