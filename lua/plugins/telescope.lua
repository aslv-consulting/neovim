require('telescope').setup{
    defaults = {
        file_ignore_patterns = { "node_modules" }, -- Ignorer certains dossiers
        mappings = {
            i = { ["<C-j>"] = "move_selection_next" }, -- Raccourcis personnalisés
        },
    },
}
vim.api.nvim_set_keymap('n', '<leader>ff', ':Telescope find_files<CR>', { noremap = true }) -- Recherche de fichiers
vim.api.nvim_set_keymap('n', '<leader>fg', ':Telescope live_grep<CR>', { noremap = true })  -- Recherche dans le contenu

