-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

--- @class IndentConfig
--- @field expandtab boolean Whether to use spaces instead of tabs
--- @field tabstop number Number of spaces that a <Tab> counts for
--- @field shiftwidth number Number of spaces to use for each step of (auto)indent
local function indent(config)
  local default = {
    expandtab = true,
    tabstop = 4,
    shiftwidth = 4,
  }

  --- merge two tables, with values from `config` taking precedence over `default_config`
  for k, v in pairs(default) do
    if config[k] == nil then
      config[k] = v
    end
  end

  vim.bo.expandtab = config.expandtab
  vim.bo.tabstop = config.tabstop
  vim.bo.shiftwidth = config.shiftwidth
end

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("lazyvim_customize_tab", { clear = true }),
  pattern = { "go", "gitconfig" },
  callback = function()
    local dict = {
      go = { expandtab = false },
      gitconfig = {
        expandtab = false,
        tabstop = 2,
        shiftwidth = 2,
      },
    }

    if dict[vim.bo.filetype] then
      indent(dict[vim.bo.filetype])
    else
      print("No customized tab defined for " .. vim.bo.filetype)
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("lazyvim_mini_splitjoin_trailing_comma", { clear = true }),
  pattern = { "go" },
  callback = function()
    local splitjoin = require("mini.splitjoin")
    local gen_hook = splitjoin.gen_hook
    local parens = { brackets = { "%b()" } }

    -- Add trailing comma when splitting inside parenthesis
    local add_comma_parens = gen_hook.add_trailing_separator(parens)

    -- Delete trailing comma when joining inside parenthesis
    local del_comma_parens = gen_hook.del_trailing_separator(parens)

    vim.b.minisplitjoin_config = {
      split = { hooks_post = { add_comma_parens } },
      join = { hooks_post = { del_comma_parens } },
    }
  end,
})
