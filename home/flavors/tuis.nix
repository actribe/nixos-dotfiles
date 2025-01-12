{ pkgs, ... }:
{
  imports = [
    ../features/tuis/basic.nix
    ../features/tuis/default.nix
    ../features/tuis/fzf.nix
    ../features/tuis/nvim.nix
    ../features/tuis/starship.nix
    ../features/tuis/zsh.nix
  ];
}
