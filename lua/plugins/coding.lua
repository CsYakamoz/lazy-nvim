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
}
