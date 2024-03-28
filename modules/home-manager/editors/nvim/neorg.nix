 {pkgs, ...}:{ 
	programs.nixvim.plugins = {
		neorg = {
      enable = true;
			lazyLoading = false;

      modules = {
        "core.defaults" = {__empty = null;};
				"core.esupports.metagen" = {
					config = {
						type = "auto";
					};
				};
				"core.dirman" = {
          config = {
            workspaces = {
							notes = "~/Notes";
							home = "~";
							org = "~/Org";
            };
					index = "index.norg";
            default_workspace = "notes";
          };
        };

				"core.journal" = {
					config = {
						journal_folder = "Journal";
						strategy = "nested";
						workspace = "notes";
					};
				};
        "core.ui.calendar" = {__empty = null;};

				"core.completion" = {
          config = {
            engine = "nvim-cmp";
						name = "[Norg]";
          };
        };

        "core.concealer" = {__empty = null;};
        "core.summary" = {__empty = null;};

        "core.integrations.telescope" = {__empty = null;};
				"core.integrations.nvim-cmp" = {__empty = null;};
      };
    };
  };
}
