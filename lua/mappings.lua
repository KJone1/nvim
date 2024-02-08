local M = {}

M.general = {
  n = { -- Normal mode mappings
      ['pt'] = {':Twilight<CR>','Twilight Mode' },
      ['pp'] = {':Spaceport<CR>','Open Projects' },
      ['<leader>/'] = {'<Cmd>lua require("Comment.api").toggle.linewise.current()<CR>', 'Comment linewise' }
  },
  i = { -- Insert mode mappings
  },
  v = { -- Visual mode mappings
      ['<leader>/'] = {'<ESC><Cmd>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', 'Comment linewise selected text' }
  },
}

M.git = {
  n = {
      ['lg'] = {':LazyGit<CR>', 'Lazy Git' },
  },
}

M.tree = {
  n = {
      ['pot'] = {':Neotree filesystem action=show toggle=true<CR>','Toggle File Tree' },
      ['pof'] = {':Neotree filesystem action=focus<CR>','Focus on File Tree' },
  },
  v = {
  }
}

M.text = {
  n = {
    ['pm'] = {':MarkdownPreview<CR>','Open Markdown Preview' }
  }
}

M.telescope = {
  n = {

    ['<leader>p']       = { ":lua require'telescope'.extensions.project.project{}<CR>", 'Open Saved Projects' },
    ['<leader>sf']      = { require('telescope.builtin').find_files, '[S]earch [F]iles' },
    ['<leader>sd']      = { require('telescope.builtin').diagnostics, '[S]earch [D]iagnostics' },
    ['<leader>so']       = { require('telescope.builtin').oldfiles, 'Find recently opened files' },
    ['<leader><space>'] = { require('telescope.builtin').buffers, 'Find open buffers' },
    ['<leader>f'] = { function()
      require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
        winblend = 10,
        previewer = false,
        wrap_results = true,
      })
      end, '[/] Fuzzily search in current buffer' },

  }
}
return M
