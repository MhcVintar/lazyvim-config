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
        "<cmd>IconPickerNormal<cr>",
        desc = "All Icons",
      },
      {
        "<leader>if",
        "<cmd>IconPickerNormal alt_font<cr>",
        desc = "Alternative Fonts",
      },
      {
        "<leader>ie",
        "<cmd>IconPickerNormal emoji<cr>",
        desc = "Emojis",
      },
      {
        "<leader>ih",
        "<cmd>IconPickerNormal html_colors<cr>",
        desc = "HTML Colors",
      },
      {
        "<leader>in",
        "<cmd>IconPickerNormal nerd_font<cr>",
        desc = "Nerd Fonts",
      },
      {
        "<leader>is",
        "<cmd>IconPickerNormal symbols<cr>",
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
