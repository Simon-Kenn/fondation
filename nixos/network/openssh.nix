{ lib, config, ...}:
with lib; let 
	cfg = config.modules.services.openssh;
	hasOptinPersistence = config.environment.persistence ? "/persist";
in {

	options.modules.services.openssh = {
		enable = mkEnableOption "Enable systemd boot";
	};

	config = mkIf cfg.enable {
		services.openssh = {
			enable = true;
			settings = {
				PasswordAuthentication = false;
				PermitRootLogin = "no";
			};
		};
	};
}
