{ config, lib, inputs, ...}: 
with lib; let 
	cfg = config.modules.system.impermanence;
in {
	options.modules.system.impermanence = {
		enable = mkEnableOption "Enable nix options";
	};

	imports = [ inputs.impermanence.nixosModules.home-manager.impermanence ];

	config = mkIf cfg.enable {
		home.persistence = {
			"/persist/home/leto" = {
				directories = [
					"Codes"
					".ssh"
					".vim"
				];
				allowOther = true;
			};
		};
	};
}
