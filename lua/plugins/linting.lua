return {
  {
    "mfussenegger/nvim-lint",
    event = "LazyFile",
    opts = {
      linters_by_ft = {
        go = { "golangcilint" },
        proto = { "protolint" },
      },
    },
  },
}
