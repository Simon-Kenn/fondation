{
  programs.starship = {
    enable = true;

    enableBashIntegration = true;
    enableZshIntegration = true;
		enableFishIntegration = true;

    settings = {
      format = let
        git = "$git_branch$git_commit$git_state$git_status";
      in ''
        $username$hostname($cmd_duration)$time
        $directory(${git})
        ($shlvl)$jobs$character
      '';

      fill = {
        symbol = " ";
        disabled = false;
      };

      username = {
        format = "[$user]($style)";
        show_always = true;
      };

      hostname = {
        format = "[@$hostname]($style) ";
        ssh_only = false;
        style = "bold green";
      };

      cmd_duration = {
        format = "took [$duration]($style) ";
        style = "bold blue";
      };

      directory = {
        format = "in [$path]($style)( [$read_only]($read_only_style)) ";
      };

      time = {
        format = "at [$time]($style)";
        style = "bold blue";
        disabled = false;
      };

      shlvl = {
        format = " [$shlvl]($style) ";
        style = "bold cyan";
        threshold = 3;
        repeat = true;
        disabled = false;
      };

      character = {
        success_symbol = "[➜](bold green) ";
        error_symbol = "[✗](bold red) ";
        vimcmd_symbol = "[V](bold green) ";
      };
    };
  };
}
