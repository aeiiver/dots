vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- local history
    use {
        'dinhhuy258/vim-local-history',
        branch = 'master',
        run = ':UpdateRemotePlugins'
    } 

    -- appearance
    use {
        'nvim-lualine/lualine.nvim'
        --requires = { {'kyazdani42/nvim-web-devicons', opt = true} }
    }
end)
