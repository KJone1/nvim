-- nvim v0.8.0
return{
    "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    vim.keymap.set('n', 'pg', ':LazyGit<CR>', { noremap = true, silent = true, desc = 'Open Lazy[G]it' })
}
