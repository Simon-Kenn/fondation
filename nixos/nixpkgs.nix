{ lib, config, ...}:
with lib; let 
	cfg = config.modules.system.nixpkgs;
in {

options.modules.system.nixpkgs = {
		enable = mkEnableOption "Enable systemd boot";
	};

	config = mkIf cfg.enable {
		nipkgs = {
			config = {
				allowUnfree = true;
			};
		};
	};
}
