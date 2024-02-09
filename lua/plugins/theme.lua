local themes = {
  {
    "sainnhe/gruvbox-material",
    lazy = true,
    event = "User ColorSchemeLoad",
    priority = 1000,
  },
  {
    -- Default theme
    "rebelot/kanagawa.nvim",
    lazy = false,
    event = "User ColorSchemeLoad",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("kanagawa-wave")
    end,
  },
  {
    "catppuccin/nvim",
    as = "catppuccin",
    lazy = true,
    event = "User ColorSchemeLoad",
    priority = 1000,
  },
}

return themes

