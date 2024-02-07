local M = {}

M.general = {
  n = { -- Normal mode mappings
      ['pt'] = {':Twilight<CR>','Twilight Mode' },
      ['pp'] = {':Spaceport<CR>','Open Projects' }
  },
  i = { -- Insert mode mappings
  },
  v = { -- Visual mode mappings
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
}

M.text = {
  n = {
    ['pm'] = {':MarkdownPreview<CR>','Open Markdown Preview' }
  }
}

return M
