{ pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
  };

  home.file.".config/nvim/init.lua" = {
    source = ../../../config/nvim/init.lua;
    recursive = false;
  };
}
