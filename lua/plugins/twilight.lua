return {
  "folke/twilight.nvim",
  opts = {},
  vim.keymap.set('n', 'pt', ':Twilight<CR>', { noremap = true, silent = true, desc = 'Go [T]wilight Mode' })
}
