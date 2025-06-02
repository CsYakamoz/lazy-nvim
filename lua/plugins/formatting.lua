return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        go = { "gofumpt", "golines", "goimports-reviser" },
        proto = { "clang-format" },
      },
    },
  },
}
