let
  main = "SUPER";
  secondMain = "SUPER SHIFT";
  alt = "ALT";
  secondAlt = "SUPER ALT";
in {
  wayland.windowManager.hyprland.settings = {
    bindm = [
      "${main}, mouse:272,            movewindow"
      "${main}, mouse:273,            resizewindow"
    ];
    bind = [
      # window operations
      "${secondMain},c,               killactive"
      "${secondMain},m,               exit"
      "${main}, v,                    togglefloating"
      "${main}, p,                    pseudo"
      "${main}, j,                    togglesplit"
      "${main}, f,                    fullscreen"

      # change focus
      "${main}, t,                    movefocus, l"
      "${main}, n,                    movefocus, r"
      "${main}, r,                    movefocus, u"
      "${main}, s,                    movefocus, d"

      # move window
      "${alt}, t,                     movewindow, l"
      "${alt}, n,                     movewindow, r"
      "${alt}, r,                     movewindow, u"
      "${alt}, s,                     movewindow, d"

      # change workspace
      "${main}, quotedbl,             workspace, 1"
      "${main}, guillemotleft,        workspace, 2"
      "${main}, guillemotright,       workspace, 3"
      "${main}, parenleft,            workspace, 4"
      "${main}, parenright,           workspace, 5"
      "${main}, at,                   workspace, 6"
      "${main}, plus,                 workspace, 7"
      "${main}, minus,                workspace, 8"
      "${main}, slash,                workspace, 9"
      "${main}, asterisk,             workspace, 10"

      # move active windowe to workspace x
      "${secondMain}, quotedbl,       movetoworkspace, 1"
      "${secondMain}, guillemotleft,  movetoworkspace, 2"
      "${secondMain}, guillemotright, movetoworkspace, 3"
      "${secondMain}, parenleft,      movetoworkspace, 4"
      "${secondMain}, parenright,     movetoworkspace, 5"
      "${secondMain}, at,             movetoworkspace, 6"
      "${secondMain}, plus,           movetoworkspace, 7"
      "${secondMain}, minus,          movetoworkspace, 8"
      "${secondMain}, slash,          movetoworkspace, 9"
      "${secondMain}, asterisk,       movetoworkspace, 10"

      # move active windowe to workspace x in silence
      "${secondAlt}, quotedbl,       movetoworkspacesilent, 1"
      "${secondAlt}, guillemotleft,  movetoworkspacesilent, 2"
      "${secondAlt}, guillemotright, movetoworkspacesilent, 3"
      "${secondAlt}, parenleft,      movetoworkspacesilent, 4"
      "${secondAlt}, parenright,     movetoworkspacesilent, 5"
      "${secondAlt}, at,             movetoworkspacesilent, 6"
      "${secondAlt}, plus,           movetoworkspacesilent, 7"
      "${secondAlt}, minus,          movetoworkspacesilent, 8"
      "${secondAlt}, slash,          movetoworkspacesilent, 9"
      "${secondAlt}, asterisk,       movetoworkspacesilent, 10"

      # Scrolling through active workspace
      "${main}, right,            workspace, +1"
      "${main}, left,             workspace, -1"

      "${main}, mouse_down,       workspace, e+1"
      "${main}, mouse_up,         workspace, e-1"
    ];
  };
}
