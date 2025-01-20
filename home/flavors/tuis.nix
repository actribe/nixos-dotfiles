{ pkgs, ... }:
{
  imports = [
    ../features/tuis/basic.nix
    ../features/tuis/default.nix
    ../features/tuis/fzf.nix
    ../features/tuis/nvf.nix
    ../features/tuis/tokyonight.nix
    ../features/tuis/starship.nix
    ../features/tuis/zsh.nix
    ../features/tuis/lazydocker.nix
  ];
}
