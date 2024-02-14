{ config, lib, ...}:
with lib; let 
	cfg = config.modules.network.network-manager;
in {

	options.modules.network-manager = {
		enable = mkEnableOption "Enable network-manager";
	};

	config = mkIf cfg.enable {
		networking = {
			useDHCP = true;
			networkmanager.enable = true;
		};
	};
}
