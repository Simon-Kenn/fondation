{ 
  description = "A declarative, autonomous, and functional information system";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		impermanence.url = "github:nix-community/impermanence";

		disko = {
			url = "github:nix-community/disko";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = {
		self,
    nixpkgs,
		home-manager,
    ...
  } @inputs: let
		inherit (self) outputs;
	
		lib = nixpkgs.lib // home-manager.lib;
	in {
		inherit lib;

		nixosConfigurations = {
				farstar = lib.nixosSystem {
					system = "x86_64-linux";
					modules = [ ./hosts/farstar ];
					specialArgs = { inherit inputs outputs; };
			};
		};

		homeConfigurations = {
			"simon@farstar" = lib.homeManagerConfiguration {
				modules = [ ./users/simon];
				pkgs = nixpkgs.legacyPackages.x86_64-linux;	
				extraSpecialArgs = { inherit inputs outputs; };
			};
		};
  };
}
