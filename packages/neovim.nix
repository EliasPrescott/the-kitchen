{ nixpkgs, nixvim, system  }:
  let
    lib = nixpkgs.lib;
    pkgs = nixpkgs.legacyPackages.${system};
  in
  nixvim.legacyPackages.${system}.makeNixvim {
    colorschemes.gruvbox.enable = true;
    opts = {
      number = true;
      relativenumber = true;
      wrap = true;
      signcolumn = "yes";
      tabstop = 4;
      expandtab = true;
      swapfile = false;
      clipboard = "unnamedplus";
    };
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      { mode = "n"; key = "<leader>q"; action = ":quit<cr>"; }
      { mode = "n"; key = "<leader>w"; action = ":write<cr>"; }
      { mode = "n"; key = "-"; action = ":Oil .<cr>"; }
      {
        mode = "n";
        key = "<leader>af";
        action.__raw = ''
        function()
          require("telescope.builtin").find_files({
            find_command = { "${lib.getExe pkgs.ripgrep}", "--files", "--hidden", "--no-ignore", "--glob", "!**/.git/*" },
          })
        end'';
      }
      {
        mode = "n";
        key = "<leader>aa";
        action.__raw = ''
        function()
          require("telescope.builtin").live_grep({
            additional_args = { "--hidden", "--no-ignore" },
            glob_pattern = {"!**/.git/*"},
          })
        end'';
      }
    ];
    plugins = {
      lsp = {
        enable = true;
        keymaps.lspBuf = {
          gd = "definition";
        };
      };
      web-devicons.enable = true;
      telescope = {
        enable = true;
        keymaps = {
          "<leader>f".action = "find_files";
          "<leader>s".action = "live_grep";
          "<leader>b".action = "buffers";
          "<leader>h".action = "help_tags";
        };
      };
      oil.enable = true;
      nvim-surround.enable = true;
      fugitive.enable = true;
      vim-dadbod.enable = true;
      vim-dadbod-ui.enable = true;
      treesitter = {
        enable = true;
        settings.highlight.enable = true;
      };
    };
    lsp = {
      servers = {
        lua_ls.enable = true;
        ts_ls.enable = true;
        gopls.enable = true;
        ruby_lsp.enable = true;
        rust_analyzer.enable = true;
        roslyn_ls = {
          enable = true;
          settings = {
            cmd = [
              "${lib.getExe pkgs.roslyn-ls}"
              "--logLevel"
              "Information"
              "--extensionLogDirectory"
              # I don't think this will actually work, but I haven't tested it yet.
              # I think it will be interpreted as a literal Lua string.
              "vim.fs.joinpath(vim.uv.os_tmpdir(), 'roslyn_ls/logs')"
              "--stdio"
            ];
          };
        };
      };
    };
  }
