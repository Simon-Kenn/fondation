{ pkgs, inputs, outputs, config, ...}:
{
	imports = [ inputs.home-manager.nixosModules.home-manager ];

	users.users.leto = {
		isNormalUser = true;
		shell = pkgs.fish;
		extraGroups = ["wheel" "network" "git"];
		packages = [ pkgs.home-manager ];
		initialPassword = "password";
		#hashedPasswordFile = 
	};

	home-manager = {
		users.leto = import ./home.nix;
		extraSpecialArgs = { inherit inputs outputs; };
	};
}
