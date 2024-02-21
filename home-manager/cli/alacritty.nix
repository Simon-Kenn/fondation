{config, ...}: let 
	inherit (config.colorscheme) colors;
in {
	home.sessionVariables = {
		TERMINAL = "alacritty";
	};
	programs.alacritty = {
		enable = true;

		settings = {

			window = {
				#dimensions = {
				#	columns = 0;
				#	lines = 0;
				#};

				#position = {
				#	x = 0;
				#	y = 0;
				#};

				padding = {
					x = 2;
					y = 2;
				};

				#decoration = "none";
				#opacity =  0.90;
				#startup_mode = "Windowed";
				#title = "Alacritty";
				#dynamic_title = true;
				#class = {
				#	instance = "Alacritty";
				#	general = "Alacritty";
				#};
				#decoration_theme_variant = "none";
			};

			scrolling = {
				history = 10000;
				multiplier = 3;
			};

			font = {
				normal = {
					family = config.fontProfiles.monospace.family;
					style = "Regular";
				};
				#bold = {
				#	family = "";
				#	style = "Bold";
				#};
				#italic = {
				#	family = "";
				#	style = "Italic";
				#};
				#bold_italic = {
				#	family = "";
				#	style = "Bold Italic";
				#};
				size = 11.0;
				#offset = {
				#	x = 0;
				#	y = 0;
				#};
				#glyph_offset = {
				#	x = 0;
				#	y = 0;
				#};

			};

			colors = {
				primary = {
					background = "#${colors.base00}";
					foreground = "#${colors.base05}";
					dim_foreground = "#${colors.base05}";
					bright_foreground = "#${colors.base05}";
				};

				cursor = {
					text = "#${colors.base00}";
					cursor = "#${colors.base06}";
				};

				vi_mode_cursor = {
					text = "#${colors.base00}";
					cursor = "#${colors.base07}";
				};

				search = {
					matches = {
						foreground = "#${colors.base00}";
						background = "#${colors.base01}"; # TODO: Change
					};
					focused_match = {
						foreground = "#${colors.base00}";
						background = "#${colors.base0B}";
					};
				};

				hints = {
					start = {
						foreground = "#${colors.base00}";
						background = "#${colors.base0A}";
					};
					end = {
						foreground = "#${colors.base00}";
						background = "#${colors.base06}";
					};
				};

				footer_bar= {
					foreground = "#${colors.base00}";
					background = "#${colors.base01}";
				};
				normal = {
					black = "#${colors.base03}";
					red = "#${colors.base08}";
					green = "#${colors.base0B}";
					yellow = "#${colors.base0A}";
					blue = "#${colors.base0D}";
					magenta = "#${colors.base06}";
					cyan = "#${colors.base0C}";
					white = "#${colors.base05}";
				};

				bright = {
					black = "#${colors.base04}";
					red = "#${colors.base08}";
					green = "#${colors.base0B}";
					yellow = "#${colors.base0A}";
					blue = "#${colors.base0D}";
					magenta = "#${colors.base06}";
					cyan = "#${colors.base0C}";
					white = "#${colors.base05}";
				};

				dim = {
					black = "#${colors.base03}";
					red = "#${colors.base08}";
					green = "#${colors.base0B}";
					yellow = "#${colors.base0A}";
					blue = "#${colors.base0D}";
					magenta = "#${colors.base06}";
					cyan = "#${colors.base0C}";
					white = "#${colors.base05}";
				};
			};

			bell = {
				animation = "EaseOutExpo";
				duration = 0;
				command = "None";
			};

			#selection = {
			#	save_to_clipboard = false;
			#};
		};
	};
}
