{
	networking.hostName = "farstar";
	system.stateVersion = "24.05";

	imports = [
		./hardware.nix
		./disk.nix
		../../users/simon
		../../nixos
	];

	modules = {
		system = {
			systemd-boot = true;
			nixpkgs.enable = true;
			nix.enable = true;
			locale.enable = true;
			console.enable = true;
			base-packages.enable = true;
			ephemeral-btrfs.enable = true;
			impermanence.enable = true;
			openssh.enable = true;
		};
	};
}
