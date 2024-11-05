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

	wayland.windowManager.hyprland = {
		enable = true;

		settings = {
			general = with config.colorScheme.colors; {
				"col.active_border" = "rgba(${base0E}ff) rgba (${base09}ff) 60deg";
				"col.inactive_border" = "rgba(${base00}ff)";
			};
		};
	};
	programs.waybar.enable = true;
	programs.rofi.enable = true;

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
