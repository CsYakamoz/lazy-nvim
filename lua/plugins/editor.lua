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
    "Owen-Dechow/nvim_json_graph_view",
    opts = {
      editor_type = "floating",
      keymaps = {
        link_backward = "H",
      },
    },
    cmd = { "JsonGraphView" },
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
}
