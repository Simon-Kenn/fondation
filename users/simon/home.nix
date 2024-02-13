{ lib, pkgs, ...}:
{
	home = {
		username = "simon";
		homeDirectory = "/home/simon";
		stateVersion = "24.05";
	};

	nixpkgs = {
		config = {
			allowUnfree = true;
		};
	};

	nix = {
		package = lib.mkDefault pkgs.nix;
		settings = {
			experimental-features = [ "nix-command" "flakes" "repl-flake"];
		};
	};

	programs.home-manager.enable = true;

	systemd.user.startService = "sd-switch";
}
