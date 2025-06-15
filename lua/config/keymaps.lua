-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- Force myself to use <C-[> in insert mode
set("i", "<C-c>", function()
  vim.notify("Please use <C-[> instead of <C-c> in Insert Mode", vim.log.levels.WARN, { title = "Keymap Warning" })
end, { desc = "Disable <C-c> in Insert Mode", silent = true, noremap = true })

-- Easily Jump to First/Last Non-Blank Char
set("v", "gl", "g_", { desc = "Jump to Last Non Blank Char", silent = true, noremap = true })
set("v", "gh", "g^", { desc = "Jump to First Non Blank Char", silent = true, noremap = true })

-- Easily switch tab
set("n", "<C-n>", "gt", { desc = "Next Tab" })
set("n", "<C-p>", "gT", { desc = "Previous Tab" })

-- Quickly add empty lines: https://github.com/mhinz/vim-galore#quickly-add-empty-lines
-- stylua: ignore start
set( "n", "<leader>o", ":<C-u>put =repeat(nr2char(10), v:count1)<cr>", { desc = "Add New Line Below the Current Line", silent = true, noremap = true })
set( "n", "<leader>O", ":<C-u>put! =repeat(nr2char(10), v:count1)<cr>'[", { desc = "Add New Line Above the Current Line", silent = true, noremap = true })
-- stylua: ignore end

-- Highlight matches without moving: https://vim.fandom.com/wiki/Highlight_all_search_pattern_matches#Highlight_matches_without_moving
-- stylua: ignore
set( "n", "z/", ":let @/='\\<<C-R>=expand(\"<cword>\")<CR>\\>'<CR>:set hls<CR>", { desc = "Highlight <cword> without moving", silent = true, noremap = true })

-- Keep Behavior of n and N: https://github.com/mhinz/vim-galore#saner-behavior-of-n-and-n
-- Bring search results to midscreen: https://www.reddit.com/r/vim/comments/oyqkkd/your_most_frequently_used_mapping/
-- stylua: ignore start
set("n", "n", "'Nn'[v:searchforward]", { desc = "Next Search Result", expr = true, silent = true, noremap = true })
set("x", "n", "'Nn'[v:searchforward]", { desc = "Next Search Result", expr = true, silent = true, noremap = true })
set("o", "n", "'Nn'[v:searchforward]", { desc = "Next Search Result", expr = true, silent = true, noremap = true })
set("n", "N", "'nN'[v:searchforward]", { desc = "Prev Search Result", expr = true, silent = true, noremap = true })
set("x", "N", "'nN'[v:searchforward]", { desc = "Prev Search Result", expr = true, silent = true, noremap = true })
set("o", "N", "'nN'[v:searchforward]", { desc = "Prev Search Result", expr = true, silent = true, noremap = true })
-- stylua: ignore end

-- Search within Visual Selection: https://www.reddit.com/r/neovim/comments/zy3qq0/til_search_within_visual_selection/
set("x", "/", "<Esc>/\\%V", { desc = "Search within Visual Selection", silent = true, noremap = true })

-- Focus the current split: https://www.reddit.com/r/vim/comments/5civsq/is_there_a_way_to_focus_the_current_split/
-- deprecated: prefer to use the `<leader>uZ` of lazyvim
-- set("n", "<leader>z", ":tab split<CR>", { desc = "Focus the current split", silent = true, noremap = true })
