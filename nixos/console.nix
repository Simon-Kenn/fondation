{ pkgs, config, lib, ...}:
with lib; let 
	cfg = config.modules.system.console;
in {
	options.modules.system.console= {
		enable = mkEnableOption "Enable bépo console";
	};

	config = mkIf cfg.enable {
		console = {
			keyMap = "fr-bepo";
		};
	};
}
