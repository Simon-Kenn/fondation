{ pkgs, lib, ...}:
with lib; let 
	cfg = config.modules.nixos.systemd-boot;
in {
	options.modules.nixos.systemd-boot = {
		enable = mkEnableOption "Enable systemd boot";
	};

	config = mkIf cfg.enable {
		boot = {
			kernelPackages = pkgs.linuxPackages_latest;
			loader = {
				systemd-boot = {
					enable = true;
					consoloMode = "max";
				};
			};
		};
	};
}
