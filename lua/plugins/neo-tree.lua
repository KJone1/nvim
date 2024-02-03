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
    local args = vim.fn.argv()
    if not vim.g.neotree_opened and #args == 0 then
      vim.cmd "Neotree filesystem reveal action=focus position=current"
      vim.g.neotree_opened = true
    end
      vim.keymap.set('n', 'po', ':Neotree filesystem action=show toggle=true<CR>', { noremap = true, silent = true, desc = '[O]pen File Tree' })
      vim.keymap.set('n', 'pf', ':Neotree filesystem action=focus<CR>', { noremap = true, silent = true, desc = '[F]ocs on File Tree' })
      vim.keymap.set('n', 'pot', ':Neotree filesystem action=show toggle=true<CR>', { noremap = true, silent = true, desc = '[T]oggle File Tree' })
      vim.keymap.set('n', 'pof', ':Neotree filesystem action=focus<CR>', { noremap = true, silent = true, desc = '[F]ocus on File Tree' })
  end
}
