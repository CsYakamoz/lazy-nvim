return {
  {
    "AndrewRadev/linediff.vim",
    cmd = { "Linediff", "LinediffAdd", "LinediffReset" },
    keys = {
      { "<leader>ul", mode = "v", ":Linediff<cr>", desc = "Line Diff" },
    },
  },

  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  },

  {
    "keaising/im-select.nvim",
    event = "InsertEnter",
    opts = true,
  },

  {
    "hat0uma/csvview.nvim",
    ---@module "csvview"
    ---@type CsvView.Options
    opts = {
      parser = { comments = { "#", "//", "--" } },
      view = { display_mode = "border", header_lnum = 1 },
      keymaps = {
        textobject_field_inner = { "if", mode = { "o", "x" } },
        textobject_field_outer = { "af", mode = { "o", "x" } },
        jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
        jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
        jump_next_row = { "<Enter>", mode = { "n", "v" } },
        jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
      },
    },
    cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
  },

  {
    "Owen-Dechow/videre.nvim",
    cmd = "Videre",
    dependencies = {
      "Owen-Dechow/graph_view_yaml_parser",
      "Owen-Dechow/graph_view_toml_parser",
      "a-usr/xml2lua.nvim",
    },
    opts = {
      simple_statusline = false,
    },
  },

  {
    "mistricky/codesnap.nvim",
    build = "make",
    cmd = {
      "CodeSnap",
      "CodeSnapASCII",
      "CodeSnapHighlight",
      "CodeSnapSave",
      "CodeSnapSaveHighlight",
    },
    opts = {
      mac_window_bar = false,
      has_breadcrumbs = true,
      has_line_number = true,
      bg_padding = 20,
      watermark = "",
    },
  },

  {
    "monaqa/dial.nvim",
    opts = function(_, opts)
      local augend = require("dial.augend")

      local equal_alias = augend.constant.new({
        elements = { "==", "!=" },
        word = false,
        cyclic = true,
      })

      table.insert(opts.groups.default, equal_alias)
      table.insert(opts.groups.default, augend.date.alias["%Y-%m-%d"])

      return opts
    end,
  },

  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy",
    priority = 1000,
    opts = {
      options = {
        show_source = {
          enabled = true,
          if_many = true,
        },

        multilines = {
          enabled = true,
          always_show = true,
        },
      },
    },
  },
}
