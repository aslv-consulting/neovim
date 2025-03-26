-- Apparence et ergonomie
vim.o.number = true
vim.o.relativenumber = false
vim.o.cursorline = true
vim.o.termguicolors = true -- Couleurs 24 bits pour des thèmes modernes
vim.o.scrolloff = 8 -- Garde 8 lignes visibles autour du curseur
vim.opt.colorcolumn = "120" -- Affiche une ligne verticale à 120 caractères
vim.o.wrap = false -- Désactive le retour à la ligne automatique
vim.cmd [[highlight ColorColumn ctermbg=0 guibg=lightgrey]] -- Change la couleur de la colonne

-- Indentation
vim.o.tabstop = 4 -- Nombre d'espaces pour une tabulation
vim.o.shiftwidth = 4 -- Nombre d'espaces pour un retrait
vim.o.expandtab = true -- Convertit les tabulations en espaces

-- Recherche
vim.o.ignorecase = true -- Ignorer la casse dans les recherches
vim.o.smartcase = true -- Mais respecter la casse si une majuscule est utilisée

-- Temps de réponse clavier
vim.o.timeoutlen = 300

vim.g.mapleader = '<' -- Définit la barre d'espace comme touche leader
vim.g.maplocalleader = '<' -- Définit aussi une touche leader locale

-- desactiver le mouse reporting
vim.o.mouse = ""

-- IA
vim.g.copilot_enabled = true -- activer copilot

-- Copier/coller
vim.o.clipboard = 'unnamedplus' -- Utiliser le presse-papier système

-- Charge Packer
vim.cmd [[packadd packer.nvim]]

-- Python venv
vim.g.python3_host_prog = vim.fn.getcwd() .. '/.venv/bin/python3'

package.path = package.path .. ";/opt/homebrew/share/lua/5.4/?.lua"
package.cpath = package.cpath .. ";/opt/homebrew/share/lua/5.4/?.so"


require('packer').startup(function()
    use 'wbthomason/packer.nvim' -- Gestionnaire de plugins
    -- Ajoutez ici d'autres plugins
end)

require('plugins')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.telescope')
require('plugins.lualine')
require('plugins.fb')
require('plugins.linters')
require('plugins.lsp')
require('plugins.rest')
require('plugins.mp')
