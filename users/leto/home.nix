{ lib, ...}:
{
	imports = [
		../../home-manager/default.nix
	];

	home = {
		username = "leto";
		homeDirectory = "/home/leto";
		stateVersion = lib.mkDefault "24.05";
	};

	modules = {
		system = {
			nix.enable = true;
			nixpkgs.enable = true;
			impermanence.enable = true;
		};
		security = {
			gpg.enable = true;
		};
		editors = {
			nvim.enable = true;
			#vim.enable = true;
		};
	};

	programs.home-manager.enable = true;
	programs.git.enable = true;

	systemd.user.startServices = "sd-switch";
}
