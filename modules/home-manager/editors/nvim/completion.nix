{
	programs.nixvim.plugins = {
		luasnip = {
			enable = true;
			extraConfig = {
				history = true;
				updateevents = "TextChanged,TextChangedI";
				enable_autosnippets = true;
			};
			fromLua = [
			  {}
				{
					paths = ./snippets;
				}
			];
		};
		nvim-cmp = {
			enable = true;

			snippet.expand = "luasnip";
    	sources = [
				{name = "nvim_lsp";}
				{name = "nvim-lua";}
				{name = "luasnip";}
    	  {name = "path";}
				{name = "neorg";}
    	  {name = "buffer"; keywordLength = 5;}
				{name = "cmdline";}
				{name = "cmp-cmdline-history";}
    	];
    	mapping = {
				"<C-d>" = "cmp.mapping.scroll_docs(-4)";
				"<C-f>" = "cmp.mapping.scroll_docs(4)";
    	  "<CR>" = "cmp.mapping.confirm({ select = true })";
    	  "<Tab>" = {
					modes = ["i" "s"];
    	    action = /* lua */ ''
    	      function(fallback)
						  luasnip = require('luasnip')
							if cmp.visible() then
      				  cmp.select_next_item()
      				elseif luasnip.expandable() then
      				  luasnip.expand()
      				elseif luasnip.expand_or_jumpable() then
      				  luasnip.expand_or_jump()
      				else
      				  fallback()
      				end
    	      end
    	    '';
    	  };
				"<S-Tab>" = {
    	    action = ''
    	      function(fallback)
							if cmp.visible() then
      				  cmp.select_prev_item()
      				else
      				  fallback()
      				end
    	      end
    	    '';
    	  };
    	};
		};
	};
}
