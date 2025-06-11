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
    "keaising/im-select.nvim",
    event = "VeryLazy",
    opts = {
      default_command = "im-select",
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
}
