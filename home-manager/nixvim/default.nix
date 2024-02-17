{
  inputs,
  pkgs,
	lib,
  ...
}:
with lib; let
	cfg = config.modules.editors.nvim;
in {
  imports = [
    inputs.nixvim.homeManagerModules.nixvim
		./options.nix
		./vbepo.nix
		./keymaps.nix
		./ui.nix
		./ux.nix
		./langage.nix
		./completion.nix
		./neorg.nix
  ];

	options.modules.editors.nixvim = {
		enable = mkEnableOptions "enable neovim editor";
	};

	config = mkIf cfg.enable {
		home.sessionVariables.EDITOR = "nvim";

  	programs.nixvim = {
  	  enable = true;
  	  package = pkgs.neovim-nightly;
  	};

		xdg.desktopEntries = {
			nvim = {
				name = "Neovim";
				genericName = "Text Editor";
				comment = "Edit text files";
				exec = "nvim %F";
				icon = "nvim";
				terminal = true;
				type = "Application";
				categories = [ "Utility" "TextEditor"];
			};
		};
	};
}
