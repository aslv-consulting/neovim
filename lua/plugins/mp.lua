-- markdown-preview.lua
vim.g.mkdp_auto_start = 0  -- Ne démarre pas automatiquement
vim.g.mkdp_auto_close = 1 -- Ferme la preview quand vous quittez le fichier Markdown
vim.g.mkdp_refresh_slow = 0 -- Rafraîchit la preview rapidement
vim.g.mkdp_command_for_global = 0 -- Limite la commande MarkdownPreview à Markdown uniquement
vim.g.mkdp_open_to_the_world = 0 -- Garde la preview locale
vim.g.mkdp_browser = '' -- Utilise le navigateur par défaut
vim.g.mkdp_filetypes = { 'markdown' }
vim.api.nvim_set_keymap("n", "<leader>mp", "<cmd>MarkdownPreview<CR>", { noremap = true, silent = true })
