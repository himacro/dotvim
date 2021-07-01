
local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function config_general()
	vim.opt.hidden = true
	vim.opt.ignorecase = true
	vim.opt.smartcase = true
	vim.opt.tabstop = 4
	vim.opt.softtabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true
	vim.opt.clipboard = 'unnamed,unnamedplus'

	vim.opt.number = true
end


local function config_gui()
--    vim.opt.guifont="Sarasa Term SC:h16"
    vim.opt.guifont="Iosevka Term:h16"
end

local function config_mouse()
	vim.opt.mouse = 'a'
end

local function config_keymap()
	vim.g.mapleader = ' '
end

local function config_completion()
	-- vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}
	vim.opt.completeopt = {'menuone', 'noinsert'}
	vim.opt.shortmess = vim.opt.shortmess + 'c'

    vim.g.completion_matching_smart_case = 1
    vim.g.completion_sorting = 'alphabet'
    vim.g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
end

local function config_autocommands()
	vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
end

local function config_plugin_comfortable_motion()
    vim.g.comfortable_motion_scroll_down_key = "j"
    vim.g.comfortable_motion_scroll_up_key = "k"
    map('n', '<ScrollWheelDown>', ':call comfortable_motion#flick(40)<CR>') 
    map('n', '<ScrollWheelUp>', ':call comfortable_motion#flick(-40)<CR>') 
end

local function config_plugin_onedark()
    vim.cmd([[ colorscheme onedark ]])
end

local function config_plugin_fterm()
    require('FTerm').setup()
    local opts = { noremap = true, silent = true}
    map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
    map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
end


config_general()
config_keymap()
config_mouse()
config_gui()
config_completion()
config_autocommands()

config_plugin_comfortable_motion()
config_plugin_onedark()
config_plugin_fterm()

