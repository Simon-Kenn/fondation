{ config, lib, ...}:
with lib; let
	cfg = config.modules.security.gpg;
in{
	options.modules.security.gpg = {
		enable = mkEnableOption "Enable gpg";
	};

	config = mkIf cfg.enable {
		home.sessionVariables = {
			GPG_TTY = "$(tty)";
		};

		services.gpg-agent = {
			enable = true;
			pinentryFlavor = "curses";
		};

		programs = {
			gpg = {
				enable = true;
				#publicKeys = [{
				#	source = ./pgp.asc;
				#	trust = 5;	
				#}];
			};
		};
	};
}
