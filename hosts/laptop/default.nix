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
	programs.tmux.enable = true;
	programs.fzf.enable = true;
	programs.bat.enable = true;

}
