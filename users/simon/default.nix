{ pkgs, inputs, outputs, config, ...}:
{
	imports = [ inputs.home-manager.nixosModules.home-manager ];

	users.users.simon = {
		user = {
			isNormalUser = true;
			shell = pkgs.fish;
			extraGroups = ["wheel" "network" "git"];
			packages = [ pkgs.home-manager ];
			#hashedPasswordFile = 
		};
	};

	home-manager = {
		users.user = import ./home.nix;
		extraSpecialArgs = { inherit inputs outputs; };
	};
}
