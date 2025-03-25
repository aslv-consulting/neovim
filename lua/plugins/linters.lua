vim.g.ale_linters = {
    php = {'phpstan', 'phpcs'},         -- Linters pour PHP
    rust = {'clippy'},                 -- Linter pour Rust
    javascript = {'eslint'},           -- Linter pour JavaScript
    markdown = {'markdownlint'},       -- Linter pour Markdown
    lua = {'luacheck'},                -- Linter pour Lua
    python = {'flake8', 'pylint'}      -- Linters pour Python
}

-- Global
vim.g.ale_set_signs = 1 -- Affiche les diagnostics dans la colonne de gauche
vim.g.ale_lint_on_text_changed = 'always' -- Active le linting à chaque changement
vim.g.ale_lint_on_save = 1               -- Lint au moment de la sauvegarde
vim.g.ale_fix_on_save = 1                -- Formate automatiquement au moment de la sauvegarde

-- PHP
vim.g.ale_fixers = {
    php = {'phpcbf'}, -- Option pour corriger automatiquement les erreurs PSR-12
}
vim.g.ale_php_phpstan_executable = vim.fn.expand("/opt/homebrew/bin/phpstan")
vim.g.ale_php_phpcs_executable = vim.fn.expand("/opt/homebrew/bin/phpcs")
vim.g.ale_php_phpstan_options = "--level=max"
vim.g.ale_php_phpcs_standard = "PSR12"

-- Javascript
vim.g.ale_javascript_eslint_options = '' -- Options supplémentaires pour ESLint (vide par défaut)
