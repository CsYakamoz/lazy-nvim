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

  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = { border = "rounded" },
        documentation = { window = { border = "rounded" } },
      },
      signature = { window = { border = "rounded" } },
    },
  },

  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        float = {
          border = "rounded",
        },
      },
    },
  },
}
