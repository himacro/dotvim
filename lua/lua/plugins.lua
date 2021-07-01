
packer = require('packer').startup(function()
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'kethku/golden-ratio'
    use 'kyazdani42/nvim-web-devicons'
    use 'yuttie/comfortable-motion.vim' 
    use 'folke/tokyonight.nvim'
    use 'navarasu/onedark.nvim'
    use 'numToStr/FTerm.nvim'
    use 'romgrk/barbar.nvim' 

    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'tjdevries/nlua.nvim'
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

return packer

