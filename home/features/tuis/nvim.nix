{pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      zig-vim
    ];

  };

  home.file.".config/nvim/init.lua" = {
    source = ../../../config/nvim/init.lua;
    recursive = false;
  };
}
