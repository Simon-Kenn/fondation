{ lib, pkgs, inputs, ...}:
{
	imports = [
		inputs.impermanence.nixosModules.home-manager.impermanence
	];

	home = {
		username = "simon";
		homeDirectory = "/home/simon";
		stateVersion = "24.05";

		persistence = {
			"/persist/home/simon" = {
				directories = [
					"Codes"
					".ssh"
				];
				allowOther = true;
			};
		};
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
