-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function use_tab(n)
  vim.bo.tabstop = n
  vim.bo.shiftwidth = n
  vim.bo.expandtab = false
end

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("lazyvim_use_tab", { clear = true }),
  pattern = {
    "go",
    "gitconfig",
  },
  callback = function()
    local dict = {
      go = 4,
      gitconfig = 2,
    }

    if dict[vim.bo.filetype] then
      use_tab(dict[vim.bo.filetype])
    else
      print("No tab size defined for " .. vim.bo.filetype)
    end
  end,
})
