{ config, lib, ...}:
with lib; let 
	cfg = config.modules.shell.fish;
in {
	options.modules.shell.fish = {
		enable = mkEnableOption "Enable fish";
	};

	config = mkIf cfg.enable {
		programs.fish = {
			enable = true;
			vendor = {
				completions.enable = true;
				config.enable = true;
				functions.enable = true;
			};
		};
	};
}
