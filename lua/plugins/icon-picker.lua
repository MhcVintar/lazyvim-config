return {
  "ziontee113/icon-picker.nvim",
  dependencies = {
    {
      "stevearc/dressing.nvim",
    },
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  keys = {
    {
      "<leader>i",
      "<cmd>IconPickerNormal<cr>",
      desc = "Icon picker",
    },
  },
  cmd = {
    "IconPickerNormal",
    "IconPickerYank",
    "IconPickerInsert",
  },
  config = function()
    require("icon-picker").setup({ disable_legacy_commands = true })
  end,
}
