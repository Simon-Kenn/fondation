{
  programs.nixvim = { 

		keymaps = [
			{
				key = "<C-n>";
				action = ''
					function()
						if ls.choice_active() then
							ls.change_choice(1)
						end
					end
				'';
			}
			# Divers
    	{ key = "<Tab>"; action  = "za"; }
			{ key = "<CR>"; action = "zz"; } 

    	# Gestion des fenêtres
    	{ key = "<leader>t"; action  = "<C-w>h"; options.desc = "Fenêtre de gauche"; } # fenêtre  gauche
    	{ key = "<leader>n"; action  = "<C-w>l"; } # fenetre droite
    	{ key = "<leader>s"; action  = "<C-w>j"; } # fenêtre bas
    	{ key = "<leader>r"; action  = "<C-w>k"; } # fenêtre haut
    	{ key = "<leader>q"; action  = "<C-w>c"; } # Fermer la fenêtre actuelle
    	{ key = "<leader>h"; action  = "<C-w>s"; } # Scinder la fenêtre
    	{ key = "<leader>v"; action  = "<C-w>v"; } # Scinder verticalement

			# Gestion des buffers
			{ key = "<A-b>"; action = "<cmd>BufferPrevious<CR>"; 
				options = { 
					silent = true; 
					desc = "Tampon précédant"; 
				}; 
			}
			{ key = "<A-p>"; action = "<cmd>BufferNext<CR>"; 
				options = { 
					silent = true; 
					desc = "Tampon suivant"; 
				}; 
			}
			#{ key = ""; action = "<cmd>BufferMovePrevious<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Décaler le buffer vers la droite"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferMoveNext<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Décaler le buffer vers la gauche"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 1<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au premier buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 2<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au deuxième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 3<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au troixième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 4<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au quatrième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 5<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au cinquième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 6<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au sixième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 7<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au septième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 8<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au huitième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferGoto 9<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au neuvième buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferLast<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Aller au dernier buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferPin<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Épingler / désepingler le buffer"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferClose<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Fermer le buffer en cours"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferOrderByBufferNumber<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Réordonner les buffer par numéro"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferOrderByDirectory<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Réordonner les buffers par répertoire"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferOrderByLanguage<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Réordonner les buffers par langages"; 
			#	}; 
			#}
			#{ key = ""; action = "<cmd>BufferOrderByWindowNumber<CR>"; 
			#	options = { 
			#		silent = true; 
			#		desc = "Réordonner les buffers par fenêtre"; 
			#	}; 
			#}
    	# Neorg
    	{ key = "<Leader>nja"; action = "<cmd>Neorg journal today<CR>"; }
			{ key = "<Leader>njm"; action = "<cmd>Neorg journal toc<CR>"; }
			{ key = "<Leader>njh"; action = "<cmd>Neorg journal yesterday<CR>"; }
			{ key = "<Leader>njd"; action = "<cmd>Neorg journal tomorrow<CR>"; }

			{ key = "<Leader>nn"; action = "<cmd>Neorg workspace<CR>"; }
			{ key = "<Leader>nm"; action = "<cmd>Neorg index<CR>"; }
    	{ 
    	  key = "<Leader>nf"; 
    	  action = "<cmd>Neorg keybind all core.integrations.telescope.find_norg_files<CR>"; 
    	}
    	{ 
    	  key = "<Leader>nl"; 
    	  action = "<cmd>Neorg keybind all core.integrations.telescope.find_linkable<CR>"; 
    	}
			# Undotree
			{
				key = "<leader>u";
				action = "<cmd>UndotreeToggle<CR>";
			}
			# Neotree
			{
				key = "<leader>j";
				action = "<cmd>Neotree toggle reveal_force_cwd<CR>";
			}
			# Which key
			{
				key = "<leader>w";
				action = "<cmd>WhichKey<CR>";
			}

		];

		plugins = { 
			harpoon.keymaps = {
				addFile = "<leader>a";
				toggleQuickMenu = "<leader>é";
				navFile = {
					"1" = "<leader>\"";
	 				"2" = "<leader>\«";
	 				"3" = "<leader>\»";
	 				"4" = "<leader>\(";
				};
			};

			telescope.keymaps = {
				"<leader>ff" = { 
					action = "find_files";
					desc = "Telescope Find Files";
				};
				"<leader>fg" = {
					action = "live_grep";
					desc = "Telescope Live Grep";
				};
				"<leader>fb" = {
					action = "buffers";	
					desc = "Telescope Find Buffers";
				};
				"<leader>fh" = "help_tags";

				#"<leader>fs" = "treesitter";
				#"<leader>fd" = "diagnosics";

				"<leader>fvcw" = "git_commits";
	 			"<leader>fvcb" = "git_bcommits";
	 			"<leader>fvb" = "git_branches";
	 			"<leader>fvs" = "git_status";
	 			"<leader>fvx" = "git_stash";

				#"<leader>flr" = "lsp_references";
	 			#"<leader>fli" = "lsp_implementations";
	 			#"<leader>flD" = "lsp_definitions";
	 			#"<leader>flt" = "lsp_type_definitions";
	 			#"<leader>fld" = "diagnostic";
			};

			lsp.keymaps = {
	 			diagnostic = {
	 					"<leader>lr" = "goto_prev";
	 					"<leader>ls" = "goto_next";
	 					"<leader>vd" = "open_float";
	 				};
	 				lspBuf = {
	 					"gd" = "definition";
	 					"gD" = "references";
	 					"gt" = "type_definition";
	 					"gi" = "implementation";
	 					";" = "hover";
	 				};
	 			};
		};
	};
}
