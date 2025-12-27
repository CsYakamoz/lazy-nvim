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
        "protolint",

        -- formatter
        "gofumpt",
        "goimports-reviser",
        "golines",

        -- go tools for plugin: olexsmir/gopher.nvim
        "gomodifytags",
        "impl",
      },
    },
  },
}
