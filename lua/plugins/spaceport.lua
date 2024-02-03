return {
    'CWood-sdf/spaceport.nvim',
    opts = {},
    lazy = false, -- load spaceport immediately
    vim.keymap.set('n', 'pp', ':Spaceport<CR>', { noremap = true, silent = true, desc = 'Open Spaceport' })

}
