{ lib, config, ...}:
with lib; let  
	cfg = config.modules.editors.vim;
in {
	config = mkIf cfg.enable {
		programs.vim = {
			enable = true;
			extraConfig = builtins.readFile ./vimrc;
		};
	};
}
