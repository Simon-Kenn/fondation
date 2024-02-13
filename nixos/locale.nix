{ pkgs, config, lib, ...}:
with lib; let 
	cfg = config.modules.system.locale;
in {
	options.modules.system.locale = {
		enable = mkEnableOption "Enable fr locale";
	};

	config = mkIf cfg.enable {
		i18n = {
			defaultLocale = "fr_FR.UTF-8";
		};
		time.timeZone = "Europe/Paris";
	};
}
