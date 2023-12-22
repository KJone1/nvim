return {
  'romgrk/barbar.nvim',
  dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
  },
  init = function() vim.g.barbar_auto_setup = false end,
  opts = {
    animation = true,
    insert_at_start = true,
    auto_hide = 1,
    no_name_title = "New File",
    sidebar_filetypes = {
      NvimTree = true,
      undotree = {text = 'undotree'},
      ['neo-tree'] = {event = 'BufWipeout'},
      Outline = {event = 'BufWinLeave', text = 'symbols-outline'},
    }
  },
  version = '^1.0.0',
}

