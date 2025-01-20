{ pkgs, lib, ... }:
{
  programs.nvf = {
    enable = true;
    settings = {
      vim = {
        theme = {
          enable = true;
          name = "tokyonight";
          style = "moon";
        };
        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        languages = {
          enableLSP = true;
          enableTreesitter = true;

          nix.enable = true;
          lua.enable = true;
          zig.enable = true;
          python.enable = true;
        };

        terminal = {
          enable = true;
        };
      };
    };
  };
}
