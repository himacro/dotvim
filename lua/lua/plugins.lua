local map = vim.api.nvim_set_keymap
local opt = vim.opt
local g = vim.g
local cmd = vim.cmd

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'kethku/golden-ratio'
    use 'kyazdani42/nvim-web-devicons'

    use { 
        'yuttie/comfortable-motion.vim', 
        config = function ()
            g.comfortable_motion_scroll_down_key = "j"
            g.comfortable_motion_scroll_up_key = "k"
            local opts = { noremap = true, silent = true }
            map('n', '<ScrollWheelDown>', ':call comfortable_motion#flick(40)<CR>', opts) 
            map('n', '<ScrollWheelUp>', ':call comfortable_motion#flick(-40)<CR>') 
        end
    }

    use 'folke/tokyonight.nvim'

    use {
        'navarasu/onedark.nvim',
        config = function ()
            cmd([[ colorscheme onedark ]])
        end
    }

    use { 
        'numToStr/FTerm.nvim',
        config = function()
            require('FTerm').setup()
            local opts = { noremap = true, silent = true}
            map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', opts)
            map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', opts)
        end
    }

    use 'romgrk/barbar.nvim' 
    use { 
        'neovim/nvim-lspconfig',
        config = function() 
            local lsp = require('lsp')
            lsp.setup_ccls()
            lsp.setup_pyright()
        end
    }

    use {
        'nvim-lua/completion-nvim',
        config = function ()
            -- vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}
            opt.completeopt = {'menuone', 'noinsert'}
            opt.shortmess = opt.shortmess + 'c'
            g.completion_matching_smart_case = 1
            g.completion_sorting = 'alphabet'
            g.completion_matching_strategy_list = {'exact', 'substring', 'fuzzy', 'all'}
        end
    }
    use {
        'tjdevries/nlua.nvim',
        requires = {'neovim/nvim-lspconfig'},
        config = function() 
            local lsp = require('lsp')
            lsp.setup_nlua()
        end
    }

    use 'nvim-treesitter/nvim-treesitter'

    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use 'tpope/vim-obsession'
    --    use 'kyazdani42/nvim-tree.lua'

    use {
        'b3nj5m1n/kommentary', 
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('kommentary.config').use_extended_mappings()
        end
    }

end)


