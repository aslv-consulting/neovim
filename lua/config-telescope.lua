require('telescope').setup{
  extensions = {
    file_browser = {
      hidden = true,
      respect_gitignore = true,
      -- Ajoutez ici votre configuration spécifique au file_browser
    },
  },
  defaults = {
    mappings = {
      i = {
        ["<CR>"] = require('telescope.actions').select_tab,
      },
    },
  },
}

require('telescope').load_extension('file_browser')

