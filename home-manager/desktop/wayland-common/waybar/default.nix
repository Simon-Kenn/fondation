{
  pkgs,
  host,
  config,
  ...
}: {
  programs.waybar = {
    enable = true;
    package = pkgs.waybar.overrideAttrs (oa: {
      mesonFlags = (oa.mesonFlags or []) ++ ["-Dexperimental=true"];
    });

    settings = let
      custom-nix = import ./modules/custom-nix.nix;
      workspaces = import ./modules/worskpaces.nix;
      clock = import ./modules/clock.nix;
      cpu = import ./modules/cpu.nix;
      memory = import ./modules/memory.nix;
      pulseaudio = import ./modules/pulseaudio.nix;
      network = import ./modules/network.nix;
      custom-hostname = import ./modules/custom-hostname.nix;
    in {
      centerBar = {
        output = ["${host.monitors.main}""${host.monitors.second}"];
        layer = "top";
        position = "top";
        height = 30;
        width = 1920;
        modules-left = [
          "custom/nix"
          "hyprland/workspaces"
        ];
        modules-center = [
					"cpu"
          "memory"
          "clock"
          "pulseaudio"
				];
        modules-right = [
          "tray"
          "network"
          "custom/hostname"
        ];
        "custom/nix" = custom-nix;
        "hyprland/workspaces" = workspaces;
        "clock" = clock;
        "cpu" = cpu;
        "memory" = memory;
        "pulseaudio" = pulseaudio;
        "network" = network;
        "custom/hostname" = custom-hostname;
      };
    };
    style = let inherit (config.colorscheme) colors; in /* css */ ''
			@define-color accent #${colors.base0D};
      * {
        font-family: ${config.fontProfiles.regular.family}, ${config.fontProfiles.monospace.family};
        font-size: 11pt;
        border: none;
      }

      window#waybar {
        background: transparent;
        color: #${colors.base05};
      }

      .modules-left, .modules-center, .modules-right {
        opacity: 0.70;
        background-color: #${colors.base00};
        border: 1px solid #${colors.base02};
				transition-property: background-color;
				transition-duration: 0.5s;
				border-radius: 10px;
				margin: 5px 10px 5px 10px;
      }

      #workspaces {
        font-weight: bold;
        margin-left: 15px;
      }

      #workspaces button {
        background-color: #${colors.base01};
        color: #${colors.base05};
        margin: 2px;
      }

      #workspaces button.focused,
      #workspaces button.active {
        background-color: @accent;
        color: #${colors.base00};
      }

      #workspaces button.urgent {
        background-color: #${colors.base08};
      }

			#custom-nix,
			#cpu,
			#memory,
			#clock,
			#pulseaudio,
			#network,
			#tray,
			#custom-hostname {
				padding: 0px 10px;
				margin: 7px 0px 10px 0px;
				border-radius: 8px;
			}

      #custom-nix {
        background-color: @accent;
        color: #${colors.base00};
				padding: 0px 20px 0px 15px;
				margin: 0px 0px 0px 0px;
				font-size: 25px;
      }

      #custom-hostname {
        background-color: @accent;
        color: #${colors.base00};
				margin: 0px 0px;
				padding: 0px 10px;
      }

      #tray {
        color: #${colors.base05};
      }

      #clock {
        background-color: @accent;
        color: #${colors.base00};
        padding-left: 15px;
        padding-right: 15px;
        margin-top: 0;
        margin-bottom: 0;
        border-radius:10px;
      }
    '';
  };
}
