{ lib, config, ...}:
with lib; let 
	cfg = config.os.services.openssh;
	hasOptinPersistence = config.environment.persistence ? "/persist";
in {

	options.os.services.openssh = {
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
