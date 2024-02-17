{ lib, pkgs, inputs, outputs ,...}:
{
	imports = [
		inputs.impermanence.nixosModules.home-manager.impermanence
		../../home-manager/default.nix
	];

	modules = {
		security = {
			gpg.enable = true;
		};
		editors = {
			nvim.enable = true;
		};
	};

	home = {
		username = "leto";
		homeDirectory = "/home/leto";
		stateVersion = lib.mkDefault "24.05";

		persistence = {
			"/persist/home/leto" = {
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
		overlays = builtins.attrValues outputs.overlays;
	};

	nix = {
		package = lib.mkDefault pkgs.nix;
		settings = {
			experimental-features = [ "nix-command" "flakes" "repl-flake"];
			warn-dirty = false;
		};
	};

	programs.home-manager.enable = true;
	programs.git.enable = true;

	systemd.user.startServices = "sd-switch";
}
