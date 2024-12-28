{ config, pkgs, ... }:
{
  home.username = "armyc";
  home.homeDirectory = "/home/armyc";

  home.stateVersion = "24.05";

  dconf.settings = {
    "org/gnome/mutter" = {
      experimental-features = [ "scale-monitor-framebuffer" ];
    };
  };

  home.packages = [

  ];

  home.file =
    {
    };

  home.sessionVariables = {
    EDITOR = "nvim";
    TERMINAL = "kitty";
    SHELL = "zsh";
  };

  programs.home-manager.enable = true;

  # programs.waybar.enable = true;
  # programs.rofi.enable = true;

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

  programs.kitty = {
    enable = true;
    shellIntegration.enableZshIntegration = true;
    extraConfig = "background_opacity 0.9";
  };

  programs.fastfetch.enable = true;

  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
  };

  home.file.".config/nvim/init.lua" = {
    source = ../../config/init.lua;
    recursive = false;
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
  home.file.".config/starship.toml".source = ../../config/starship.toml;

}
