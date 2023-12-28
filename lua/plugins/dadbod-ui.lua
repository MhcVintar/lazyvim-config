return {
  "kristijanhusak/vim-dadbod-ui",
  dependencies = {
    { "tpope/vim-dadbod", lazy = true },
    { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true },
  },
  cmd = {
    "DBUI",
    "DBUIToggle",
    "DBUIAddConnection",
    "DBUIFindBuffer",
  },
  keys = {
    {
      "<leader>D",
      "<cmd>DBUIToggle<cr>",
      desc = "Database",
    },
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
    vim.g.db_ui_icons = {
      expanded = "",
      collapsed = "",
    }
    vim.g.db_ui_use_nvim_notify = 1
    vim.g.db_ui_win_position = "right"
  end,
}
