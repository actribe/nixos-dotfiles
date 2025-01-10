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
    terraform
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

  # programs.waybar.enable = true;
  # programs.rofi.enable = true;
  
  # programs.kitty = {
  #  enable = true;
  # };

  imports = [
    ../../home/features/tuis/starship.nix
    ../../home/features/tuis/nvim.nix
    ../../home/features/tuis/zsh.nix
    ../../home/features/tuis/fzf.nix

  ];

  home.file.".config/ghostty" = {
    source = ../../config/ghostty;
    recursive = true;
  };

  programs.fastfetch.enable = true;

  programs.tmux.enable = true;

  programs.bat.enable = true;

}
