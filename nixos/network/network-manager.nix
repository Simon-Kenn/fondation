{ config, lib, ...}:
with lib; let 
	cfg = config.modules.network.network-manager;
in {

	options.modules.network.network-manager = {
		enable = mkEnableOption "Enable network-manager";
	};

	config = mkIf cfg.enable {
		networking = {
			useDHCP = lib.mkForce true;
			networkmanager.enable = true;
		};
	};
}
