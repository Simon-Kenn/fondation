{ config, lib, ...}:
with lib; let
	cfg = config.modules.system.nix;
in {
	options.modules.system.nix = {
		enable = mkEnableOption "Enable experimental features and basic nix configuration";
	};

	config = mkIf cfg.enable {
		nix = {
			settings = {
				experimental-features = "nix-command flakes repl-flake";
				warn-dirty = false;
			};
			gc = {
				automatic = true;
				dates = "weekrl";
				options = "--delete-older-than 2d";
			};
		};
	};
}
