return {
  {
    "saghen/blink.cmp",
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      keymap = {
        preset = "super-tab",
      },
    },
  },

  {
    "tpope/vim-abolish",
    keys = {
      { "crc", mode = "n", desc = "camelCase" },
      { "crm", mode = "n", desc = "MixedCase" },
      { "crs", mode = "n", desc = "snake_case" },
      { "cr_", mode = "n", desc = "snake_case" },
      { "cru", mode = "n", desc = "UPPER_CASE" },
      { "crU", mode = "n", desc = "UPPER_CASE" },
      { "cr-", mode = "n", desc = "dash-case" },
      { "cr.", mode = "n", desc = "dot.case" },
      { "cr<space>", mode = "n", desc = "space case" },
    },
  },

  {
    "echasnovski/mini.splitjoin",
    version = false,
    keys = { { "gS", mode = { "n", "x" }, desc = "Toggle arguments" } },
    config = true,
  },

  {
    "echasnovski/mini.align",
    version = false,
    keys = {
      { "ga", mode = { "n", "x" }, desc = "Align" },
      { "gA", mode = { "n", "x" }, desc = "Align with preview" },
    },
    config = true,
  },

  {
    "saghen/blink.cmp",
    dependencies = { "archie-judd/blink-cmp-words" },
    event = "InsertEnter",
    opts = {
      sources = {
        default = { "dictionary" },
        providers = {
          thesaurus = {
            name = "blink-cmp-words",
            module = "blink-cmp-words.thesaurus",
            opts = {
              score_offset = -5,
              pointer_symbols = { "!", "&", "^" },
            },
          },

          dictionary = {
            name = "blink-cmp-words",
            module = "blink-cmp-words.dictionary",
            opts = {
              dictionary_search_threshold = 2,
              score_offset = -5,
              pointer_symbols = { "!", "&", "^" },
            },
          },
        },

        per_filetype = {
          markdown = { "thesaurus" },
        },
      },
    },
  },

  {
    "echasnovski/mini.pairs",
    config = function(_, opts)
      LazyVim.mini.pairs(opts)

      local map_bs = function(lhs, rhs)
        vim.keymap.set("i", lhs, rhs, { expr = true, replace_keycodes = false })
      end

      map_bs("<C-h>", "v:lua.MiniPairs.bs()")
      map_bs("<C-w>", 'v:lua.MiniPairs.bs("\23")')
      map_bs("<C-u>", 'v:lua.MiniPairs.bs("\21")')
    end,
  },
}
