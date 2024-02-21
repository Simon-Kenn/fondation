{ pkgs, inputs, ...}: {
  wayland.windowManager.hyprland = {
    enable = true;
  };

  imports = [
    ./settings.nix
    ./workspaces.nix
    ./basic-bindings.nix
    ./app-bindings.nix
    ./init-tty.nix
    ./startup-app.nix
  ];
	
	home.packages = with pkgs; [
		inputs.hyprwm-contrib.packages."x86_64-linux".grimblast
		#hyprslurp
	];
}
