{ config, pkgs, ...}:
{
	home.username="armyc";
	home.homeDirectory = "/home/armyc";

	home.stateVersion = "24.05";

	home.packages = [

	];

	home.file = {
	};

	home.sessionVariables = {

	};

	programs.home-manager.enable = true;

	# programs.waybar.enable = true;
	# programs.rofi.enable = true;

	programs.kitty = {
		enable = true;
		shellIntegration.enableZshIntegration = true;
	};

	programs.tmux.enable = true;
	programs.fzf = {
		enable = true;
		enableZshIntegration = true;
	};
	programs.bat.enable = true;
	programs.starship = {
		enable = true;
		enableZshIntegration = true;
	};
}
