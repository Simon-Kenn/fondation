{pkgs, ...}: {
	home.packages = [ pkgs.pinentry-curses ];

	services.gpg-agent = {
		enable = true;
		pinentryFlavor = "curses";
	};

	programs = 
	let 
		fixGpg = /* bash */ ''
			gpgconf --launch gpg-agent;
		'';
	in
	{
		fish.loginShellInit = fixGpg;
		gpg = {
			enable = true;
		};
	};
}
