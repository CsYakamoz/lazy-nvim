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
    dependencies = "nvim-lua/plenary.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  },
}
