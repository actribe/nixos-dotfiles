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
    ../../home/features/tuis/starship.nix
    ../../home/features/tuis/nvim.nix
    ../../home/features/tuis/zsh.nix
    ../../home/features/tuis/fzf.nix
    ../../home/features/tuis/default.nix
    ../../home/features/tuis/basic.nix
    ../../home/features/applications/ghostty.nix
    ../../home/features/development/devops.nix
    ../../home/features/development/zig.nix
    ../../home/features/development/python.nix
  ];


}
