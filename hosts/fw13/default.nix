{ config, pkgs, ...}:
{
	home.username="armyc";
	home.homeDirectory = "/home/armyc";

	home.stateVersion = "24.05";

  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = [ "scale-monitor-framebuffer" ];
    };
  };

	home.packages = [

	];

	home.file = {
	};

	home.sessionVariables = {
		EDITOR = "nvim";
		TERMINAL = "kitty";
	};

	programs.home-manager.enable = true;

	# programs.waybar.enable = true;
	# programs.rofi.enable = true;

	programs.kitty = {
		enable = true;
		shellIntegration.enableZshIntegration = true;
    extraConfig = "background_opacity 0.9";
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
