{ config, lib, ...}: 
with lib; let 
	cfg = config.modules.system.nix;
in {
	options.modules.system.nix = {
		enable = mkEnableOption "Enable nix options";
	};

	config = mkIf cfg.enable {
		nix = {
			package = lib.mkDefault pkgs.nix;
			settings = {
				experimental-features = [ "nix-command" "flakes" "repl-flake"];
				warn-dirty = false;
			};
		};
	};
}
