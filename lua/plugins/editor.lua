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
    opts = {
      view = {
        merge_tool = {
          layout = "diff3_mixed",
        },
      },
    },
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

  {
    "folke/snacks.nvim",
    ---@module "snacks"
    ---@type snacks.Config
    opts = {
      picker = {
        sources = {
          explorer = {
            win = {
              list = {
                keys = {
                  ["<leader>y"] = "copy_path",
                },
              },
            },
            actions = {
              ---@link https://github.com/folke/snacks.nvim/discussions/1372
              copy_path = function(_, node)
                local modify = vim.fn.fnamemodify
                local filepath = node.file
                local filename = modify(filepath, ":t")
                local choices = {
                  { label = "Absolute path:", value = filepath },
                  { label = "Path relative to CWD:", value = modify(filepath, ":.") },
                  { label = "Path relative to HOME:", value = modify(filepath, ":~") },
                  { label = "Filename:", value = filename },
                }
                if vim.fn.isdirectory(filepath) == 0 then
                  vim.list_extend(choices, {
                    { label = "Filename without extension:", value = modify(filename, ":r") },
                    { label = "Extension of the filename:", value = modify(filename, ":e") },
                  })
                end

                require("snacks").picker.select(choices, {
                  prompt = "Choose to copy to clipboard:",
                  format_item = function(item)
                    return string.format("%-27s %s", item.label, item.value)
                  end,
                }, function(choice)
                  if not choice then
                    vim.notify("Copy cancelled.", vim.log.levels.INFO)
                    return
                  end

                  vim.fn.setreg('"', choice.value)
                  vim.fn.setreg("+", choice.value)
                  vim.notify("Copied: " .. choice.value)
                end)
              end,
            },
          },
        },
      },
    },
  },
}
