-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Defualt to tabs for all file types
vim.api.nvim_create_autocmd("FileType", {
  pattern = "*",
  callback = function()
    --vim.opt_local.tabstop = 4 -- Number of spaces that a <Tab> in the file counts for
    vim.opt_local.shiftwidth = 4 -- Number of spaces to use for each step of (auto)indent
    vim.opt_local.softtabstop = 4 -- Number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>.
    vim.opt_local.expandtab = false -- Insert tabs, not spaces
    vim.opt_local.smarttab = true -- <Tab> in front of a line inserts blanks according to 'shiftwidth'.
    vim.opt_autoindent = true -- Copy indent from current line when starting a new line
  end,
})

-- silent not working
vim.cmd([[ autocmd BufReadPost * :silent! GuessIndent ]])
