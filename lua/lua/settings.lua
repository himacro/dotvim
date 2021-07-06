local function config_general()
	vim.opt.hidden = true
	vim.opt.ignorecase = true
	vim.opt.smartcase = true
	vim.opt.tabstop = 4
	vim.opt.softtabstop = 4
	vim.opt.shiftwidth = 4
	vim.opt.expandtab = true
	vim.opt.clipboard = 'unnamed,unnamedplus'
vim.opt.number = true end


local function config_gui()
    if vim.fn.has('windows') then
        vim.opt.guifont="FuraMono NF:h16"
    else
        vim.opt.guifont="Iosevka Term:h16"
    end
end

local function config_mouse()
	vim.opt.mouse = 'a'
end

local function config_keymap()
	vim.g.mapleader = ' '
end

local function config_autocommands()
	vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'
end


config_general()
config_keymap()
config_mouse()
config_gui()
config_autocommands()


