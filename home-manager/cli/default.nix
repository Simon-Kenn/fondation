{
  pkgs,
  ...
}: {
  imports = [
		./alacritty.nix
		./fish.nix
    ./starship.nix
		./zellij.nix
    ./git.nix
		./direnv.nix
    ./bat.nix
		./bottom.nix
		./gpg.nix
		./ssh.nix
  ];

  home.packages = with pkgs; [
    ncdu
    eza
    ripgrep
    fd
    diffsitter
    libnotify
    gnumake
		feh
		neofetch
		ranger
		sops
  ];
}
