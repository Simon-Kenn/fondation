{ config, lib, inputs, ...}:
with lib; let 
	cfg = config.modules.system.impermanence;
in {
	options.modules.system.impermanence = {
		enable = mkEnableOption "Enable impermanence";
	};

  imports = [
		inputs.impermanence.nixosModules.impermanence
  ];

	config = mkIf cfg.enable {
		environment.persistence."/persist" = {
			directories = [
				"/var/lib/systemd"
				"/var/lib/nixos"
				"/var/log"
				"/srv"
			];
		};
		programs.fuse.userAllowOther = true;

		system.activationScripts.persistent-dirs.text = 
		let
			mkHomePersist = user: lib.optionalString user.createHome /* sh */ ''
				mkdir -p /persist/${user.home}
				chown ${user.name}:${user.group} /persist/${user.home}
				chmod ${user.homeMode} /persist/${user.home}
			'';
			users = lib.attrValues config.users.users;
		in
		lib.concatLines (map mkHomePersist users);
	};
}
