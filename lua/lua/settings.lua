local function load_options_general()
	vim.opt.hidden = true
	vim.opt.ignorecase = true
	vim.opt.smartcase = true
	vim.opt.tabstop = 4
	vim.opt.softtabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true
	vim.opt.clipboard = 'unnamed,unnamedplus'
end

local function load_options_appearance()
	vim.opt.number = true
    vim.cmd([[ colorscheme onedark ]])

end

local function load_options_gui()
    vim.opt.guifont="Sarasa Term SC:h16"
end

local function load_options_mouse()
	vim.opt.mouse = 'a'
end

local function load_options_keymap()
	vim.g.mapleader = ' '
end

local function load_options_completion()
	vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}
	vim.opt.shortmess = vim.opt.shortmess + 'c'

    vim.g.completion_matching_smart_case = 1
    vim.g.completion_sorting = 'alphabet'
    vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
end


local function load_autocommands()
	vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
end

load_options_general()
load_options_appearance()
load_options_keymap()
load_options_mouse()
load_options_gui()
load_options_completion()

load_autocommands()


