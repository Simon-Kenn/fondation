{
	networking.hostName = "farstar";
	system.stateVersion = "24.05";

	imports = [

	];

	modules.nixos = {
		systemd-boot.enable = true;
	};
}
