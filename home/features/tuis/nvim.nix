{pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
    plugins = with pkgs.vimPlugins; [
      nvim-lspconfig
      LazyVim
      zig-vim
      toggleterm-nvim
    ];

  };

  home.file.".config/nvim/init.lua" = {
    source = ../../../config/nvim/init.lua;
    recursive = false;
  };
}
