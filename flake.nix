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

		nixvim.url = "github:nix-community/nixvim";
		neorg-overlay.url = "github:nvim-neorg/nixpkgs-neorg-overlay";
		neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

		sops-nix = {
			url = "github:Mix92/sops-nix";
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
		overlays = [
			inputs.neorg-overlay.overlays.default
			inputs.neovim-nightly-overlay.overlay
		];
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
			"leto@farstar" = lib.homeManagerConfiguration {
				modules = [ ./users/leto];
				pkgs = nixpkgs.legacyPackages.x86_64-linux;	
				extraSpecialArgs = { inherit inputs outputs overlays; };
			};
		};
  };
}
