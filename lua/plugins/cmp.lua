-- Charger nvim-cmp
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- Pour utiliser LuaSnip comme moteur de snippets
    end,
  },
  mapping = {
    -- Raccourcis pour naviguer et confirmer les suggestions
    ['<Tab>'] = cmp.mapping.select_next_item(), -- Sélectionner l'élément suivant
    ['<S-Tab>'] = cmp.mapping.select_prev_item(), -- Sélectionner l'élément précédent
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Confirme la suggestion
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' }, -- Source LSP pour les serveurs de langage
    { name = 'luasnip' },  -- Source pour les snippets
    { name = 'buffer' },   -- Complétion basée sur le buffer actuel
    { name = 'path' },     -- Complétion pour les chemins de fichiers
  }),
})

