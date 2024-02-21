{ pkgs ? import <nixpkgs> { } }: {
	neorg-extra-plugins = pkgs.callPackage ./neorg-extra-plugins { };
}
