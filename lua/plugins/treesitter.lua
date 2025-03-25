require'nvim-treesitter.configs'.setup {
    ensure_installed = { "markdown", "markdown_inline", "lua", "python", "rust", "php", "javascript" }, -- Installe Lua et autres langages, si besoin
    highlight = {
        enable = true, -- Active la mise en évidence syntaxique pour Lua
    },
    indent = {
        enable = true, -- Active l'indentation automatique avec Treesitter
    },
    incremental_selection = {
        enable = true, -- Permet de sélectionner par structure
        keymaps = {
            init_selection = "gnn",
            node_incremental = "grn",
            node_decremental = "grm",
            scope_incremental = "grc",
        },
    },
}

