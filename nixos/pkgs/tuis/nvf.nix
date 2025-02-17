{pkgs, ...}: let
  eldritch-nvim = pkgs.vimUtils.buildVimPlugin {
    pname = "eldritch-nvim";
    version = "2025-01-15";
    src = pkgs.fetchFromGitHub {
      owner = "eldritch-theme";
      repo = "eldritch.nvim";
      rev = "adedead3423c58cc2e2ebf30001fe4055ad0e416";
      sha256 = "sha256-i0TG8yVRi1AZQS8ZOEXchYRxgU8UCNoHCmhOV8rBmX4=";
    };
  };
in {
  programs.nvf = {
    enable = true;

    settings = {
      vim = {
        lazy.plugins = {
          eldritch-nvim = {
            package = eldritch-nvim;
            setupModule = "eldritch";
            setupOpts = {
              transparent = true;
            };
            after = ''
              vim.cmd[[colorscheme eldritch]]
            '';
            lazy = false;
          };
        };

        treesitter.enable = true;

        luaConfigPost = ''
          vim.opt.scrolloff = 999
        '';

        # scrollOffset = 999;

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

        utility = {
          motion = {
            precognition = {
              enable = false;
            };
          };

          images = {
            image-nvim = {
              enable = false;
              setupOpts = {
                backend = "kitty";
              };
            };
          };

          leetcode-nvim = {
            enable = true;
            setupOpts = {
              image_support = false;
              cn = {
                enabled = false;
                translator = false;
              };
              lang = "c";
              plugins = {
                non_standalone = false;
              };
            };
          };
        };

        dashboard = {
          dashboard-nvim = {
            enable = true;
            setupOpts = {
              theme = "hyper";
            };
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

        visuals = {
          nvim-web-devicons.enable = true;
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
              type = "alejandra";
            };
            lsp.enable = true;
            treesitter.enable = true;
          };
          lua.enable = true;
          zig.enable = true;
          clang.enable = true;
          html.enable = true;
          python.enable = true;
          markdown.enable = true;
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
                style = "none";
              };
              nvim-cmp = {
                enable = true;
                style = "rounded";
              };
            };
          };
          noice.enable = true;
        };
      };
    };
  };
}
