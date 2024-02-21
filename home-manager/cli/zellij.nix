{
	programs.zellij = {
		enable = true;
		enableFishIntegration = true;
		#settings = {
		#	theme = "catppuccin-mocha";
		#};
	};

	xdg.configFile."zellij".source = builtins.path {
		path = ./zellij;
		name = "zellij-config";
	};
}
