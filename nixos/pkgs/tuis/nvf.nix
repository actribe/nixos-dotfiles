{ pkgs, lib, config, ... }:
{
  programs.nvf = {
    enable = true;

    settings = {

      vim.extraPlugins = with pkgs.vimPlugins; {
        nightfly = {
          package = nightfly;
          setup = ''
            vim.cmd[[colorscheme nightfly]]
          '';
        };
      };

      vim = {
        theme = {
          enable = false;
          name = "tokyonight";
          style = "moon";
        };

        options = {
          tabstop = 2;
          shiftwidth = 2;
          wrap = false;
        };

        dashboard = {
          startify = {
            enable = true;
          };
        };

        statusline.lualine.enable = true;
        telescope.enable = true;
        autocomplete.nvim-cmp.enable = true;

        debugger = {
          nvim-dap = {
            enable = true;
            ui = {
              enable = true;
              autoStart = true;
            };
          };
        };

        lsp = {
          lspsaga = {
            enable = true;
          };
          lspkind = {
            enable = true;
          };
          lspSignature = {
            enable = true;
          };
        };

        languages = {
          enableLSP = true;
          enableTreesitter = true;
          enableFormat = true;
          enableDAP = true;

          nix = {
            enable = true;
            format = {
              enable = true;
              type = "nixfmt";
            };
          };
          lua.enable = true;
          zig.enable = true;
          clang.enable = true;
          python = {
            enable = true;
            format = {
              enable = true;
            };
          };
        };

        assistant = {
          copilot = {
            enable = true;
            cmp.enable = true;
          };
        };

        comments = {
          comment-nvim = {
            enable = true;
          };
        };

        terminal = {
          toggleterm = {
            enable = true;
            setupOpts = {
              direction = "float";
            };
            lazygit = {
              enable = true;
            };
          };
        };

        ui = {
          borders = {
            plugins = {
              lspsaga = {
                enable = true;
                style = "single";
              };
            };
          };
        };

      };
    };
  };
}
