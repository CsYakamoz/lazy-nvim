return {
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
      ensure_installed = {
        -- linter
        "clang-format",
        "golangci-lint",
        "protolint",

        -- formatter
        "gofumpt",
        "goimports-reviser",
        "golines",
      },
    },
  },
}
