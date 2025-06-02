-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set("v", "gl", "g_", { desc = "Jump to Last Non Blank Char", silent = true, noremap = true })
set("v", "gh", "g^", { desc = "Jump to First Non Blank Char", silent = true, noremap = true })

set(
  "n",
  "<leader>o",
  ":<C-u>put =repeat(nr2char(10), v:count1)<cr>",
  { desc = "Add New Line Below the Current Line", silent = true, noremap = true }
)
set(
  "n",
  "<leader>O",
  ":<C-u>put! =repeat(nr2char(10), v:count1)<cr>'[",
  { desc = "Add New Line Above the Current Line", silent = true, noremap = true }
)

-- Start Insert mode when press <C-h> in Select mode, ref: coc-snippets
set("s", "<C-h>", "<C-g>c", { desc = "Delete Selected Text", silent = true, noremap = true })
