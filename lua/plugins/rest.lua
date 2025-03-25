require("rest-nvim").setup({
  log_level = "debug",
  log_file = vim.fn.stdpath("data") .. "/rest.nvim.log",
  result_split_horizontal = true, -- Résultat dans un panneau vertical
  skip_ssl_verification = false,  -- Vérification SSL
  highlight = {
    enabled = true,               -- Activer la coloration syntaxique
    timeout = 150,                -- Durée avant expiration
  },
  jump_to_request = false,        -- Naviguer directement vers la requête
})

vim.api.nvim_set_keymap('n', '<leader>r', ":Rest run<CR>", { noremap = true, silent = true })
