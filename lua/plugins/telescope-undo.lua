return {
  "debugloop/telescope-undo.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
  },
  keys = {
    {
      "<leader>bu",
      "<cmd>Telescope undo<cr>",
      desc = "Buffer History",
    },
  },
  opts = {
    extensions = {
      undo = {
        entry_format = "$ID    ($TIME)",
      },
    },
  },
  config = function(_, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension("undo")
  end,
}
