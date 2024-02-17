{
	inputs,
	pkgs,
	config,
	lib,
	...
}: 
with lib; let
	cfg =  config.modules.editors.nvim;
in {
	imports = [
		inputs.nixvim.homeManagerModules.nixvim
		./vbepo.nix
	];

	options.modules.editors.nvim = {
		enable = mkEnableOption "Enable nvim editor";
	};

	config = mkIf cfg.enable {

		home.sessionVariables.EDITOR = "nvim";

		programs.nixvim = {
			enable = true;
			package = pkgs.neovim-nightly;
		};
	};
}
