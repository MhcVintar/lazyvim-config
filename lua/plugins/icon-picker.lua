return {
  {
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
        "<leader>ia",
        "<cmd>IconPickerInsert<cr>",
        desc = "All Icons",
      },
      {
        "<leader>if",
        "<cmd>IconPickerInsert alt_font<cr>",
        desc = "Alternative Fonts",
      },
      {
        "<leader>ie",
        "<cmd>IconPickerInsert emoji<cr>",
        desc = "Emojis",
      },
      {
        "<leader>ih",
        "<cmd>IconPickerInsert html_colors<cr>",
        desc = "HTML Colors",
      },
      {
        "<leader>in",
        "<cmd>IconPickerInsert nerd_font<cr>",
        desc = "Nerd Fonts",
      },
      {
        "<leader>is",
        "<cmd>IconPickerInsert symbols<cr>",
        desc = "Symbols",
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
  },
  {
    "folke/which-key.nvim",
    optional = true,
    opts = {
      defaults = {
        ["<leader>i"] = { name = "+icons" },
      },
    },
  },
}
