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
  ];

  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      eval "$(starship init zsh)"
    '';

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake";
      niff = "nvim $(fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')";
      iff = "fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'";
    };

    oh-my-zsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "history"
      ];
    };
  };

  home.file.".config/ghostty" = {
    source = ../../config/ghostty;
    recursive = true;
  };

  programs.fastfetch.enable = true;

  programs.tmux.enable = true;
  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.bat.enable = true;

}
