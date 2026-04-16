return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true,
      float = {
        transparent = true,
      },
    },
  },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      dark_variant = "moon",
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
      -- colorscheme = "rose-pine",
    },
  },

  {
    "folke/noice.nvim",
    opts = {
      presets = {
        lsp_doc_border = true,
      },
    },
  },

  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
      signature = { window = { border = "rounded" } },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
        float = {
          border = "rounded",
        },
      },
    },
  },

  {
    "snacks.nvim",
    opts = {
      dashboard = {
        sections = {
          function()
            return {
              align = "center",
              padding = 1,
              text = {
                { "│ ", hl = "Special" },
                { "╲ ││\n", hl = "String" },
                { "││", hl = "Special" },
                { "╲╲││\n", hl = "String" },
                { "││ ", hl = "Special" },
                { "╲ │", hl = "String" },
              },
            }
          end,
          function()
            local v = vim.version()
            return {
              align = "center",
              text = {
                {
                  string.format("NVIM v%d.%d.%d", v.major, v.minor, v.patch),
                  hl = "String",
                },
              },
            }
          end,
          {
            align = "center",
            text = {
              {
                "──────────────────────────────────────────────",
                hl = "NonText",
              },
            },
          },
          {
            align = "center",
            text = { { "Nvim is open source and freely distributable" } },
          },
          {
            align = "center",
            text = {
              {
                "──────────────────────────────────────────────",
                hl = "NonText",
              },
            },
          },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          {
            align = "center",
            text = {
              {
                "──────────────────────────────────────────────",
                hl = "NonText",
              },
            },
          },
          { section = "startup" },
        },
      },
    },
  },
}
