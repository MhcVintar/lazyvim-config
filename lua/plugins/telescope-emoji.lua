return {
  "xiyaowong/telescope-emoji.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  keys = {
    {
      "<leader>I",
      "<cmd>Telescope emoji<cr>",
      desc = "Emoji",
    },
  },
  config = function()
    require("telescope").load_extension("undo")
  end,
}
