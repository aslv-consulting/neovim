return require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Gestionnaire de plugins

    -- Syntaxe et couleurs
    use 'nvim-treesitter/nvim-treesitter'

    -- Autocomplétion
    use 'neovim/nvim-lspconfig' -- Serveur LSP pour plusieurs langages
    use 'hrsh7th/nvim-cmp' -- Complétion de code
    use 'hrsh7th/cmp-nvim-lsp' -- Source LSP pour nvim-cmp
    use 'hrsh7th/cmp-buffer'    -- Complétion pour les mots du buffer actuel
    use 'hrsh7th/cmp-path'      -- Complétion pour les chemins de fichier
    use 'hrsh7th/cmp-nvim-lua'  -- Complétion spécifique à Lua dans Neovim
    use 'saadparwaiz1/cmp_luasnip' -- Intégration avec snippets
    use 'L3MON4D3/LuaSnip'      -- Plugin LuaSnip pour les snippets

    -- Recherche et navigation
    use 'nvim-telescope/telescope.nvim'
    use 'nvim-lua/plenary.nvim' -- Dépendance pour Telescope

    -- Interface utilisateur
    use 'nvim-lualine/lualine.nvim' -- Barre de statut
    use 'nvim-telescope/telescope-file-browser.nvim' -- explorateur de fichiers
    use 'nvim-tree/nvim-web-devicons' -- icones

    -- linters
    use 'dense-analysis/ale'

    -- Autres
    use 'github/copilot.vim' -- github copilot
    use 'nvim-neotest/nvim-nio' -- nio
    use 'j-hui/fidget.nvim' -- fidget
    use 'rest-nvim/rest.nvim' -- client rest
    use 'iamcco/markdown-preview.nvim' -- preview markdown
end)
