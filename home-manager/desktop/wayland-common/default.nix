{pkgs, ...}: {
  imports = [
    #./kitty.nix
		#./zellij.nix
		#./alacritty.nix
		#./alacritty.nix
    ./mako.nix
    ./waybar
    ./wofi.nix
    ./swaylock.nix
		./qutebrowser.nix
  ];

	home.packages = with pkgs; [
		wl-clipboard
	]; 
}
