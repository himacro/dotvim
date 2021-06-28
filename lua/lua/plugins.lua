return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'

    use 'kethku/golden-ratio'
    use 'ryanoasis/vim-devicons'

    use 'neovim/nvim-lspconfig'
    use 'nvim-lua/completion-nvim'
    use 'tjdevries/nlua.nvim'
    use 'nvim-treesitter/nvim-treesitter'

    use 'nvim-telescope/telescope.nvim'

    use 'folke/tokyonight.nvim'
    use 'navarasu/onedark.nvim'
end)

