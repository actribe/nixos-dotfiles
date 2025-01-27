{
  programs.zsh = {
    enable = true;
    dotDir = ".config/zsh";
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    initExtra = ''
      eval "$(starship init zsh)"
      eval "$(direnv hook zsh)"
    '';

    shellAliases = {
      update = "sudo nixos-rebuild switch --flake";
      niff = "nvim $(fzf --preview 'bat --style=numbers --color=always --line-range :500 {}')";
      iff = "fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'";

      #Zig Aliases
      zb = "zig build";
      zr = "zig run";
      zt = "zig test";

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
}
