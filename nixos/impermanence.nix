{ config, lib, inputs, ...}:
with lib; let 
	cfg = config.modules.system.impermanence;
in {
	options.modules.system.impermanence = {
		enable = mkEnableOption "Enable impermanence";
	};

  imports = [
		inputs.impermanence.nixosModules.impermanence
  ];

	config = mkIf cfg.enable {
		environment.persistence."/persist" = {
			directories = [
				"/var/lib/systemd"
				"/var/lib/nixos"
				"/var/log"
				"/srv"
			];
		};
	};
}
