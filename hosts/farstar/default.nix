{
	networking.hostName = "farstar";
	system.stateVersion = "24.05";

	imports = [
		./hardware.nix
	];

	modules = {
		system = {
			systemd-boot = true;
			nixpkgs.enable = true;
			nix.enable = true;
			locale.enable = true;
		};
	};
}
