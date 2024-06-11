{inputs, pkgs, ... }:
{
  wayland.windowManager.hyprland = {
     enable = true;
     settings = {
       monitor = [
        "HDMI-A-1,2560x1440@144,0x0,1"
        "DP-3,2560x1440@180,2560x0,1"
      ];
       exec-once ="waybar";
       "$mod" = "SUPER";
       decoration = 
       {
        rounding = 7;
       };
       workspace = 
       [
        
       ];
       bindm =[ 
        "ALT, mouse:273,resizewindow 2"
       ];
       bind = 
       [
         "$mod, F, exec, firefox"
      	 "$mod, K, exec, kitty"
      	 "$mod, Space, exec, rofi -show drun -show-icons -theme ~/catppuccin/rofi/launcher.rasi"
         "ALT, Tab, cyclenext"
         "ALT, F4, exec, wlogout"
         "$mod, Enter, togglefloating"
         "$mod CTRL, Enter, fakefullscreen"
       ]
       ++ (
        builtins.concatLists (builtins.genList (
            x: let
              ws = let
                c = (x + 1) / 10;
              in
                builtins.toString (x + 1 - (c * 10));
            in [
              "$mod, ${ws}, workspace, ${toString (x + 1)}"
              "$mod SHIFT, ${ws}, movetoworkspace, ${toString (x + 1)}"
            ]
          )
          10)
       );
     };
  };
}
