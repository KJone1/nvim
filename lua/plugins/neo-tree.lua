return {
 "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            '.git',
            '.DS_Store',
          },
          never_show = {},
        }
      },
      window = {
        position = "left",
        width = 30,
        mappings = {
          ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = false }},
        },
        mapping_options = {
          noremap = true,
          nowait = true,
        }
      },
  })
  end
}
