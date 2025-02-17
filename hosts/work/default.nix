{
  config,
  pkgs,
  lib,
  ...
}: {
  home.username = "actribe";
  home.homeDirectory = "/home/actribe";

  home.stateVersion = "24.05";

  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = ["scale-monitor-framebuffer"];
    };
  };

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
  ];

  home.file = {
  };

  home.sessionVariables = {
    EDITOR = "nvim";
    # TERMINAL = "kitty";
    SHELL = "zsh";
  };

  programs.home-manager.enable = true;

  imports = [
    ../../home/flavors/tuis.nix
    ../../home/features/applications/ghostty.nix
    ../../home/flavors/work_development.nix
  ];
}
