{ lib, config, ...}:
with lib; let  
	cfg = config.modules.editors.vim;
in {
	options.modules.editors.vim = {
		enable = mkEnableOption "Enable vim";
	};

	config = mkIf cfg.enable {
		programs.vim = {
			enable = true;
			extraConfig = builtins.readFile ./vimrc;
		};
	};
}
