{ lib, config, outputs, ...}: 
with lib; let 
	cfg = config.os.system.nixpkgs;
in {

	options.os.system.nixpkgs = {
		enable = mkEnableOption "Wether or not to manage nixkpgs";
	};

	config = mkIf cfg.enable {
		nixpkgs = {
			config = {
				allowUnfree = true;
			};
			overlays = builtins.attrValues outputs.overlays;
		};
	};
}
