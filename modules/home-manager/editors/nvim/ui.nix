{
	programs.nixvim = {
		colorschemes.catppuccin = {
			enable = true;
    	flavour = "mocha";
			#integrations = {
			#	cmp = true;
			#	treesitter = true;
			#	telescope.enable = true;
			#	which_key = true;
			#	notify = true;
			#	neotree = true;
			#	native_lsp.enabled = true;
			#};
		};

		plugins = {
			neo-tree.enable = true;	

			lualine = {
				enable = true;
		
				iconsEnabled = true;

				sections = {
					lualine_a = ["mode"];
					lualine_b = ["branch"];
					lualine_c = ["filename" { extraConfig = { path = 1;};} ];
					
					lualine_x = ["encoding"];
					lualine_y = ["progress"];
					lualine_z = ["location"];
				};
			};

			barbar.enable = true;
			noice.enable = true;
			notify.enable = true;
		};
	};
}
