require('telescope').setup {
    defaults = {
        prompt_prefix = "🔍 ", -- Personnalisez le préfixe
        selection_caret = "❯ ", -- Personnalisez la sélection
        layout_config = {
            prompt_position = "top",
        },
    },
    extensions = {
        file_browser = {
            hidden = true,
            grouped = true,
            git_status = false,
            hijack_netrw = true, -- Désactiver netrw pour utiliser le File Browser
            mappings = {
                ["i"] = {
                    ["<CR>"] = require('telescope.actions').select_tab, -- Raccourcis en mode insertion
                },
                ["n"] = {
                    ["<CR>"] = require('telescope.actions').select_tab, -- Raccourcis en mode normal
                },
            },
        },
    },
}

-- Charger l'extension File Browser
require('telescope').load_extension('file_browser')

vim.api.nvim_set_keymap('n', '<leader>f', ':Telescope file_browser<CR>', { noremap = true, silent = true })
