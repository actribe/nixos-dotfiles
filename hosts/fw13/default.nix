{ config, pkgs, lib, ... }:
{
  home.username = "armyc";
  home.homeDirectory = "/home/armyc";

  home.stateVersion = "24.05";

  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = [ "scale-monitor-framebuffer" ];
    };
  };

  nixpkgs.config.allowUnfree = true;
  home.packages = with pkgs; [
  ];

  home.file =
    {
    };

  home.sessionVariables = {
    EDITOR = "nvim";
    # TERMINAL = "kitty";
    SHELL = "zsh";
  };

  programs.home-manager.enable = true;

  imports = [
    ../../home/features/applications/ghostty.nix
    ../../home/flavors/personal_development.nix
    ../../home/flavors/tuis.nix
  ];


}
