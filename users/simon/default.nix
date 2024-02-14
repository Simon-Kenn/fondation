{ pkgs, inputs, outputs, config, ...}:
{
	imports = [ inputs.home-manager.nixosModules.home-manager ];

	users.users.simon = {
		isNormalUser = true;
		shell = pkgs.fish;
		extraGroups = ["wheel" "network" "git"];
		packages = [ pkgs.home-manager ];
		initialPassword = "password";
		#hashedPasswordFile = 
	};

	home-manager = {
		users.simon = import ./home.nix;
		extraSpecialArgs = { inherit inputs outputs; };
	};
}
