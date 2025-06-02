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
      "crs",
      "crm",
      "crc",
      "crs",
      "cru",
      "cr-",
      "cr.",
      "cr<space>",
      "crt",
    },
  },

  {
    "keaising/im-select.nvim",
    event = "VeryLazy",
    opts = {
      default_command = "im-select",
    },
  },
}
