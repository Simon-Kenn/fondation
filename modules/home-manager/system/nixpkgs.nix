{ config, lib, outputs, ...}: 
with lib; let 
	cfg = config.modules.system.nixpkgs;
in {
	options.modules.system.nixpkgs = {
		enable = mkEnableOption "Enable nixpkgs options";
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
