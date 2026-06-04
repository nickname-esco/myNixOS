{inputs, ...}: {
  # Bring in Nixvim's Home Manager module so programs.nixvim options exist
  imports = [inputs.nixvim.homeModules.nixvim];

  programs.nixvim = {
    enable = true;
    viAlias = true;
    vimAlias = true;

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    # Core editor options
    opts = {
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      tabstop = 2;
      expandtab = true;
      smartindent = true;
      wrap = false;
      swapfile = false;
      termguicolors = true;
      signcolumn = "yes";
      updatetime = 200;
      cursorline = true;
      spell = true;
      spelllang = ["en"];
      # Send all yanks/deletes to the system clipboard (Wayland/X11)
      clipboard = "unnamedplus";
      # Scroll padding — keep cursor away from screen edges
      scrolloff = 8;
      sidescrolloff = 8;
      # Sane split directions
      splitbelow = true;
      splitright = true;
      # Case-insensitive search unless uppercase is typed
      ignorecase = true;
      smartcase = true;
      # Persistent undo across sessions
      undofile = true;
      # Encoding
      fileencoding = "utf-8";
      # Conceal for markdown rendering
      conceallevel = 2;
    };

    # Theme: Catppuccin (mocha)
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        flavour = "mocha";
        transparent_background = false;
        term_colors = true;
        styles = {
          comments = ["italic"];
        };
        integrations = {
          lualine = true;
          telescope.enabled = true;
          treesitter = true;
          gitsigns = true;
          notify = true;
          noice = true;
          which_key = true;
          indent_blankline.enabled = true;
          bufferline.enabled = true;
          illuminate.enabled = true;
          trouble = true;
          hop.enabled = true;
          leap.enabled = true;
          render_markdown = true;
          todo_comments.enabled = true;
        };
        custom_highlights = {
          # Make comments more visible
          Comment = {
            fg = "#7f849c";
            style = ["italic"];
          };

          # Soften the search highlight
          Search = {
            fg = "#1e1e2e";
            bg = "#f9e2af";
            style = ["bold"];
          };
          IncSearch = {
            fg = "#1e1e2e";
            bg = "#fab387";
            style = ["bold"];
          };

          # Make the current line number stand out more
          CursorLineNr = {
            fg = "#89b4fa";
            style = ["bold"];
          };

          # Tone down matching parentheses
          MatchParen = {
            fg = "#f5c2e7";
            style = ["bold" "underline"];
          };

          # Visual selection — slightly more visible
          Visual = {bg = "#313244";};

          # Telescope prompt border to match the blue accent
          TelescopeBorderPrompt = {fg = "#89b4fa";};

          # Floating windows, including CodeCompanion chat
          NormalFloat = {bg = "#1e1e2e";};
          FloatBorder = {
            fg = "#89b4fa";
            bg = "#1e1e2e";
          };
        };
      };
    };

    plugins = {
      # UI and visuals
      web-devicons.enable = true;
      lualine = {
        enable = true;
        settings = {
          options = {
            theme = "auto";
          };
        };
      };
      bufferline.enable = true;
      indent-blankline.enable = true;
      colorizer.enable = true;
      illuminate.enable = true;

      # File tree (Neo-tree to match NVF)
      neo-tree = {
        enable = true;
      };

      # Fuzzy finder
      telescope.enable = true;

      # Treesitter for syntax/TS features
      treesitter.enable = true;
      treesitter-context.enable = true;

      # Project management
      project-nvim.enable = true;

      # Notifications and UI polish
      notify.enable = true;
      noice.enable = true;

      # Startup dashboard
      alpha = {
        enable = true;
        theme = "dashboard"; # required by nixvim: either set a theme or a custom layout
      };

      # Git integrations
      gitsigns.enable = true;
      diffview.enable = true;

      # TODO/FIXME/NOTE highlights + trouble integration
      todo-comments.enable = true;

      # Visual undo tree (pairs with undofile = true)
      undotree.enable = true;

      # In-buffer markdown rendering
      render-markdown.enable = true;

      # Linting (companion to conform-nvim)
      lint = {
        enable = true;
        lintersByFt = {
          python = ["ruff"];
          sh = ["shellcheck"];
          javascript = ["eslint_d"];
          typescript = ["eslint_d"];
          javascriptreact = ["eslint_d"];
          typescriptreact = ["eslint_d"];
        };
      };

      # Motions and editing helpers
      hop.enable = true;
      leap.enable = true;
      vim-surround.enable = true;
      comment.enable = true;
      which-key.enable = true;

      # Autopairs for (), {}, [], '', "", etc.
      nvim-autopairs = {
        enable = true;
        settings = {
          check_ts = true; # leverage Treesitter for smarter pairing
          enable_check_bracket_line = false;
          fast_wrap = {
            enable = true;
            map = "<M-e>"; # Alt+e to fast-wrap
            chars = [
              "{"
              "["
              "("
              "\""
              "'"
              "`"
            ];
          };
        };
      };

      # Terminal
      toggleterm = {
        enable = true;
        settings = {
          direction = "float";
        };
      };

      # Diagnostics UI
      trouble.enable = true;

      # Markdown preview
      markdown-preview.enable = true;

      # Local AI assistant via Ollama
      codecompanion = {
        enable = true;
        settings = {
          adapters = {
            http = {
              opts = {
                show_model_choices = false;
              };
            };
          };

          interactions = {
            chat = {
              adapter = {
                name = "ollama";
                model = "qwen2.5-coder:3b";
              };
            };
            inline = {
              adapter = {
                name = "ollama";
                model = "qwen2.5-coder:3b";
              };
            };
            cmd = {
              adapter = {
                name = "ollama";
                model = "qwen2.5-coder:3b";
              };
            };
            background = {
              adapter = {
                name = "ollama";
                model = "qwen2.5-coder:3b";
              };
            };
          };

          display = {
            action_palette = {
              provider = "telescope";
              opts = {
                title = "󰚩 AI actions";
              };
            };

            chat = {
              window = {
                layout = "float";
                width = 0.85;
                height = 0.82;
                border = "rounded";
                relative = "editor";
                opts = {
                  breakindent = true;
                  linebreak = true;
                  wrap = true;
                  number = false;
                  relativenumber = false;
                  signcolumn = "no";
                  foldcolumn = "0";
                  winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder";
                };
              };

              floating_window = {
                width = 0.85;
                height = 0.82;
                border = "rounded";
                relative = "editor";
                opts = {
                  breakindent = true;
                  linebreak = true;
                  wrap = true;
                  number = false;
                  relativenumber = false;
                  signcolumn = "no";
                  foldcolumn = "0";
                  winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder";
                };
              };

              intro_message = "󰚩 Local AI • qwen2.5-coder:3b • press ? for options";
              separator = "─";
              show_header_separator = false;
              show_settings = false;
              show_token_count = true;
              start_in_insert_mode = false;
            };

            input = {
              window = {
                border = "rounded";
                relative = "cursor";
                title_pos = "left";
                opts = {
                  number = false;
                  relativenumber = false;
                  signcolumn = "no";
                  foldcolumn = "0";
                  statuscolumn = "";
                  breakindent = true;
                  linebreak = true;
                  wrap = true;
                  winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder";
                };
              };
            };
          };

          opts = {
            log_level = "ERROR";
            send_code = true;
            use_default_actions = true;
            use_default_prompts = true;
          };
        };
      };

      # Completion and snippets
      blink-cmp = {
        enable = true;
        settings = {
          keymap = {
            preset = "default";
            "<CR>" = [
              "accept"
              "fallback"
            ];
            "<Tab>" = [
              "select_next"
              "fallback"
            ];
            "<S-Tab>" = [
              "select_prev"
              "fallback"
            ];
          };
          appearance = {
            nerd_font_variant = "mono";
          };
          completion = {
            documentation = {
              auto_show = true;
              auto_show_delay_ms = 500;
            };
          };
          sources = {
            default = [
              "lsp"
              "path"
              "snippets"
              "buffer"
            ];
          };
          snippets = {
            preset = "luasnip";
          };
          fuzzy = {
            implementation = "prefer_rust_with_warning";
          };
          signature = {
            enabled = true;
          };
        };
      };

      luasnip.enable = true;
      friendly-snippets.enable = true;

      # LSP configuration
      lsp = {
        enable = true;
        servers = {
          nixd.enable = true;
          lua_ls.enable = true;
          pyright.enable = true;
          ts_ls.enable = true;
          html.enable = true;
          cssls.enable = true;
          clangd.enable = true;
          zls.enable = true;
          marksman.enable = true;
          hyprls.enable = true;
          bashls.enable = true;
          jsonls.enable = true;
          taplo.enable = true;
          yamlls.enable = true;
        };
        keymaps = {
          diagnostic = {
            "<leader>dl" = "open_float";
            "[d" = "goto_prev";
            "]d" = "goto_next";
          };
        };
      };

      # Formatter: conform.nvim (Prettierd, Stylua, etc.)
      conform-nvim = {
        enable = true;
        settings = {
          formatters_by_ft = {
            nix = ["alejandra"];
            lua = ["stylua"];
            python = ["ruff"];
            javascript = ["prettierd"];
            typescript = ["prettierd"];
            javascriptreact = ["prettierd"];
            typescriptreact = ["prettierd"];
            css = ["prettierd"];
            html = ["prettierd"];
            json = ["prettierd"];
            yaml = ["prettierd"];
            markdown = ["prettierd"];
            toml = ["taplo"];
            sh = ["shfmt"];
          };
          format_on_save = {
            lsp_fallback = true;
          };
        };
      };
    };

    # Keymaps aligned with your NVF setup
    keymaps = [
      # Insert-mode escape
      {
        key = "jk";
        mode = ["i"];
        action = "<ESC>";
        options.desc = "Exit insert mode";
      }

      # Save
      {
        key = "<leader>w";
        mode = ["n"];
        action = "<cmd>w<CR>";
        options.desc = "Save file";
      }

      # Buffer navigation
      {
        key = "]b";
        mode = ["n"];
        action = "<cmd>bnext<CR>";
        options.desc = "Next buffer";
      }
      {
        key = "[b";
        mode = ["n"];
        action = "<cmd>bprev<CR>";
        options.desc = "Previous buffer";
      }
      {
        key = "<leader>bd";
        mode = ["n"];
        action = "<cmd>bdelete<CR>";
        options.desc = "Close buffer";
      }

      # Window navigation
      {
        key = "<C-h>";
        mode = ["n"];
        action = "<C-w>h";
        options.desc = "Move to left window";
      }
      {
        key = "<C-j>";
        mode = ["n"];
        action = "<C-w>j";
        options.desc = "Move to lower window";
      }
      {
        key = "<C-k>";
        mode = ["n"];
        action = "<C-w>k";
        options.desc = "Move to upper window";
      }
      {
        key = "<C-l>";
        mode = ["n"];
        action = "<C-w>l";
        options.desc = "Move to right window";
      }

      # Undotree
      {
        key = "<leader>u";
        mode = ["n"];
        action = "<cmd>UndotreeToggle<CR>";
        options.desc = "Toggle undo tree";
      }

      # Todo-comments
      {
        key = "<leader>ft";
        mode = ["n"];
        action = "<cmd>TodoTelescope<CR>";
        options.desc = "Search TODOs";
      }

      # Telescope
      {
        key = "<leader>ff";
        mode = ["n"];
        action = "<cmd>Telescope find_files<cr>";
        options.desc = "Search files by name";
      }
      {
        key = "<leader>lg";
        mode = ["n"];
        action = "<cmd>Telescope live_grep<cr>";
        options.desc = "Search files by contents";
      }

      # File tree (Neo-tree)
      {
        key = "<leader>fe";
        mode = ["n"];
        action = "<cmd>Neotree toggle<cr>";
        options.desc = "File browser toggle";
      }

      # Terminal
      {
        key = "<leader>t";
        mode = ["n"];
        action = "<cmd>ToggleTerm<CR>";
        options.desc = "Toggle terminal";
      }

      # Comment line (Doom Emacs style)
      {
        key = "<leader>.";
        mode = ["n"];
        action = "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>";
        options.desc = "Comment line";
      }
      {
        key = "<leader>.";
        mode = ["v"];
        action = "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
        options.desc = "Comment selection";
      }

      # Diagnostics
      {
        key = "<leader>dj";
        mode = ["n"];
        action = "<cmd>lua vim.diagnostic.goto_next()<CR>";
        options.desc = "Go to next diagnostic";
      }
      {
        key = "<leader>dk";
        mode = ["n"];
        action = "<cmd>lua vim.diagnostic.goto_prev()<CR>";
        options.desc = "Go to previous diagnostic";
      }
      {
        key = "<leader>dl";
        mode = ["n"];
        action = "<cmd>lua vim.diagnostic.open_float()<CR>";
        options.desc = "Show diagnostic details";
      }
      {
        key = "<leader>dt";
        mode = ["n"];
        action = "<cmd>Trouble diagnostics toggle<cr>";
        options.desc = "Toggle diagnostics list";
      }

      # AI / CodeCompanion
      {
        key = "<leader>aa";
        mode = [
          "n"
          "v"
        ];
        action = "<cmd>CodeCompanionActions<CR>";
        options.desc = "AI actions";
      }
      {
        key = "<leader>ac";
        mode = ["n"];
        action = "<cmd>CodeCompanionChat Toggle<CR>";
        options.desc = "Toggle AI chat";
      }
      {
        key = "<leader>an";
        mode = ["n"];
        action = "<cmd>CodeCompanionChat<CR>";
        options.desc = "New AI chat";
      }
      {
        key = "<leader>ai";
        mode = ["n"];
        action = ":CodeCompanion ";
        options.desc = "Inline AI prompt";
      }
      {
        key = "<leader>ai";
        mode = ["v"];
        action = ":'<,'>CodeCompanion ";
        options.desc = "Inline AI prompt for selection";
      }
      {
        key = "<leader>ae";
        mode = ["v"];
        action = ":'<,'>CodeCompanion /explain<CR>";
        options.desc = "Explain selected code";
      }
      {
        key = "<leader>af";
        mode = ["v"];
        action = ":'<,'>CodeCompanion /fix<CR>";
        options.desc = "Fix selected code";
      }
      {
        key = "<leader>al";
        mode = ["n"];
        action = "<cmd>CodeCompanion /lsp<CR>";
        options.desc = "Explain LSP diagnostic";
      }

      # Disable accidental F1 across modes
      {
        key = "<F1>";
        mode = [
          "n"
          "i"
          "v"
          "x"
          "s"
          "o"
          "t"
          "c"
        ];
        action = "<Nop>";
        options.desc = "Disable accidental F1 help";
      }
      # Help mappings
      {
        key = "<leader>h";
        mode = ["n"];
        action = ":help<Space>";
        options = {
          desc = "Open :help prompt";
          nowait = true;
        };
      }
      {
        key = "<leader>H";
        mode = ["n"];
        action = ":help <C-r><C-w><CR>";
        options.desc = "Help for word under cursor";
      }
    ];

    # Diagnostic UI and notify background tweaks
    extraConfigLua = ''
      -- which-key group labels
      local wk = require("which-key")
      wk.add({
        { "<leader>f", group = "Find" },
        { "<leader>d", group = "Diagnostics" },
        { "<leader>b", group = "Buffer" },
        { "<leader>g", group = "Git" },
        { "<leader>r", group = "Rename/Refactor" },
        { "<leader>c", group = "Code" },
        { "<leader>a", group = "AI" },
      })
      -- Inline diagnostics (virtual text) similar to NVF virtual_lines
      vim.diagnostic.config({
        virtual_text = { prefix = "●", spacing = 2 },
        update_in_insert = true,
        severity_sort = true,
        underline = true,
        signs = true,
      })

      -- Basic LSP keymaps when LSP attaches
      local function lsp_on_attach(_, bufnr)
        local map = function(mode, lhs, rhs, desc)
          vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
        end
        map('n', 'K', vim.lsp.buf.hover, 'Hover docs')
        map('n', 'gd', vim.lsp.buf.definition, 'Goto definition')
        map('n', 'gD', vim.lsp.buf.declaration, 'Goto declaration')
        map('n', 'gi', vim.lsp.buf.implementation, 'Goto implementation')
        map('n', 'gr', vim.lsp.buf.references, 'References')
        map('n', '<leader>rn', vim.lsp.buf.rename, 'Rename symbol')
        map('n', '<leader>ca', vim.lsp.buf.code_action, 'Code action')
      end

      -- If nixvim exposes a hook, register it; otherwise set a global autocmd
      if vim.g.__nixvim_lsp_attached ~= true then
        vim.g.__nixvim_lsp_attached = true
        vim.api.nvim_create_autocmd('LspAttach', {
          callback = function(args)
            local bufnr = args.buf
            lsp_on_attach(nil, bufnr)
          end,
        })
      end


      -- Startup dashboard (alpha-nvim)
      do
        local ok_alpha, alpha = pcall(require, "alpha")
        if ok_alpha then
          local dashboard = require("alpha.themes.dashboard")

          -- Prefer generating the header with toilet (ansi-shadow), then figlet; fall back if unavailable
          local header_lines = nil
          local function gen_banner(cmd)
            local h = io.popen(cmd)
            if not h then return nil end
            local out = h:read("*a") or ""
            h:close()
            if #out == 0 then return nil end
            local lines = {}
            for line in out:gmatch("([^\n]*)\n?") do
              if line ~= "" then table.insert(lines, line) end
            end
            return #lines > 0 and lines or nil
          end

          header_lines = gen_banner('toilet -f ansi-shadow NIXVIM 2>/dev/null')
            or gen_banner('figlet -f "ANSI Shadow" NIXVIM 2>/dev/null')
            or gen_banner('figlet NIXVIM 2>/dev/null')

          if not header_lines then
            header_lines = {
              "███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗",
              "████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║",
              "██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║",
              "██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║",
              "██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║",
              "╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
            }
          end
          dashboard.section.header.val = header_lines

          dashboard.section.buttons.val = {
            dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
            dashboard.button("g", "󰺮  Live grep", ":Telescope live_grep<CR>"),
            dashboard.button("n", "  New file", ":enew<CR>"),
            dashboard.button("e", "  File browser", ":Neotree toggle<CR>"),
            dashboard.button("q", "  Quit", ":qa<CR>"),
          }

          local v = vim.version()
          dashboard.section.footer.val = string.format("NixVim • Neovim %d.%d.%d", v.major, v.minor, v.patch)

          dashboard.opts.opts.noautocmd = true
          alpha.setup(dashboard.config)

          -- Disable folding in alpha buffer
          vim.api.nvim_create_autocmd("FileType", {
            pattern = "alpha",
            callback = function()
              vim.opt_local.foldenable = false
            end,
          })
        end
      end
    '';
  };
}
