-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Language specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "*" },
  callback = function(args)
    local file_type = vim.bo[args.buf].filetype
    if file_type == "java" then
      vim.opt.shiftwidth = 4
      vim.opt.tabstop = 4
    end
  end,
})
