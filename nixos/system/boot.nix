{ pkgs, config, lib, ...}:
with lib; let 
	cfg = config.modules.system.systemd-boot;
in {
	options.modules.system.systemd-boot = {
		enable = mkEnableOption "Enable systemd boot";
	};

	config = mkIf cfg.enable {
		boot = {
			kernelPackages = pkgs.linuxPackages_latest;
			loader = {
				systemd-boot = {
					enable = true;
					consoleMode = "max";
				};
			};
		};
	};
}
