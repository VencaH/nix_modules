{ config, pkgs, ... }:
{

programs.waybar = {
  enable = true;
    style = 
    ''
      @define-color base   #1e1e2e;
      @define-color mantle #181825;
      @define-color crust  #11111b;

      @define-color text     #cdd6f4;
      @define-color subtext0 #a6adc8;
      @define-color subtext1 #bac2de;

      @define-color surface0 #313244;
      @define-color surface1 #45475a;
      @define-color surface2 #585b70;

      @define-color overlay0 #6c7086;
      @define-color overlay1 #7f849c;
      @define-color overlay2 #9399b2;

      @define-color blue      #89b4fa;
      @define-color lavender  #b4befe;
      @define-color sapphire  #74c7ec;
      @define-color sky       #89dceb;
      @define-color teal      #94e2d5;
      @define-color green     #a6e3a1;
      @define-color yellow    #f9e2af;
      @define-color peach     #fab387;
      @define-color maroon    #eba0ac;
      @define-color red       #f38ba8;
      @define-color mauve     #cba6f7;
      @define-color pink      #f5c2e7;
      @define-color flamingo  #f2cdcd;
      @define-color rosewater #f5e0dc;
      * {
        font-family: FantasqueSansMono Nerd Font;
        font-size: 12px;
        min-height: 0;
      }

      #waybar {
        background: transparent;
        color: @text;
        margin: 5px 5px;
      }

      #workspaces {
        border-radius: 1rem;
        margin: 5px;
        background-color: @surface1;
        margin-left: 1rem;
      }

      #workspaces button {
        color: @lavender;
        border-radius: 1rem;
        padding: 0.4rem;
      }

      #workspaces button.active {
        color: @sky;
        border-radius: 1rem;
      }

      #workspaces button:hover {
        color: @sapphire;
        border-radius: 1rem;
      }

      #tray,
      #clock,
      #pulseaudio,
      #custom-lock,
      #memory,
      #cpu,
      #disk,
      #custom-power {
        background-color: @surface1;
        padding: 0.5rem 1rem;
        margin: 5px 0;
      }

      #cpu {
        color: @teal;
        border-radius: 1rem 0px 0px 1rem;
        margin-left: 1rem;
      }

      #disk {
        color:@lavender;
      }
      
      #memory {
        margin-right: 1rem;
        border-radius: 0px 1rem 1rem 0px;
        color: @lavender;
      }      
      
      #clock {
        color: @lavender;
        border-radius: 0px 1rem 1rem 0px;
        margin-right: 1rem;
      }

      #pulseaudio {
        color: @teal;
        border-radius: 1rem 0px 0px 1rem;
        margin-left: 1rem;
      }

      #custom-lock {
          border-radius: 1rem 0px 0px 1rem;
          color: @lavender;
      }

      #custom-power {
          margin-right: 1rem;
          border-radius: 0px 1rem 1rem 0px;
          color: @teal;
      }

      #tray {
        margin-right: 1rem;
        border-radius: 1rem;
      }
    '';
    settings = {
    options = {
      layer = "top";
      position = "top";
      modules-left = [
        "hyprland/workspaces"
      ];
      modules-center = [
        
      ];
      modules-right = [
        "cpu"
        "disk"
        "memory"
        "pulseaudio"
        "clock"
        "tray"
        "custom/lock"
        "custom/power"
      ];
      "hyprland/workspaces" = {
        disable-scroll = true;
        sort-by-name = true;
        format = " {icon} ";
        format-icons = {
          default = "";
        };
        persistent-workspaces ={
          "*" = 5;
        };
        };
      tray = {
        icon-size = 21;
        spacing = 5;
      };
      clock = {
        timezone = "Europe/Prague";
        tooltip-format = "<big>{:%Y %B}</big>\n<tt><small>{calendar}</small></tt>";
        format-alt = "  {:%d/%m/%Y}";
        format = "  {:%H:%M}";
      };
      pulse-audio = {
        format = "{icon} {volume}%";
        format-muted = "";
        format-icons = {
          default = [
            ""
            "" 
            " "
          ];
        };
        on-click = "pavucontrol";
        };
      "custom/lock" = {
        tooltip = false;
        on-click = "sh -c '(sleep 0.5s; swaylock --grace 0)' & disown";
        format = "";
      };
      "custom/power" = {
        tooltip = false;
        on-click = "wlogout &";
        format = " ";
      }; 
      cpu = {
        format = "  {usage}%";
      };
      disk = {
        format = "  {percentage_used}%";
      };
      memory = {
        format = "󰍛 {percentage}%";
      };
    };
  };
};

}
