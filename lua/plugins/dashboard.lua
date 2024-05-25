return {
  "nvimdev/dashboard-nvim",
  opts = function(_, opts)
    local themes = {
      action = "Telescope colorscheme",
      desc = " Themes",
      icon = "󰸌 ",
      key = "t",
    }
    themes.desc = themes.desc .. string.rep(" ", 43 - #themes.desc)
    themes.key_format = "  %s"

    table.insert(opts.config.center, 6, themes)
  end,
}
