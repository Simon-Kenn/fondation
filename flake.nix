{ 
  description = "A declarative, autonomous, and functional information system";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

		impermanence.url = "github:nix-community/impermanence";
		nix-colors.url = "github:misterio77/nix-colors";

		disko = {
			url = "github:nix-community/disko";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		neorg-overlay.url = "github:nvim-neorg/nixpkgs-neorg-overlay";
		neovim-nightly-overlay.url = "github:nix-community/neovim-nightly-overlay";

		hyprwm-contrib = {
			url = "github:hyprwm/contrib";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		firefox-addons = {
      url = "gitlab:rycee/nur-expressions?dir=pkgs/firefox-addons";
      inputs.nixpkgs.follows = "nixpkgs";
		};

		sops-nix = {
			url = "github:Mic92/sops-nix";
			inputs.nixpkgs.follows = "nixpkgs";
		};
  };

  outputs = {
		self,
    nixpkgs,
		home-manager,
    ...
  } @inputs: 
	let
		inherit (self) outputs;
	
		lib = nixpkgs.lib // home-manager.lib;
	in {
		inherit lib;
		#nixosModules = import ./modules/nixos;
		#homeManagerModules = import ./modules/home-manager;

		overlays = import ./overlays { inherit inputs; };

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
				extraSpecialArgs = { inherit inputs outputs; };
			};
		};
  };
}
