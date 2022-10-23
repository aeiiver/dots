vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'

    -- utilities
    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use { 'mbbill/undotree' }

    -- YEP COQ
    use {
        'ms-jpq/coq_nvim',
        branch = 'coq'
    }
    use {
        'ms-jpq/coq.artifacts',
        branch = 'artifacts'
    }

    -- appearance
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            require('nvim-treesitter.install').update { with_sync = true }
        end,
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    use { 'jacoborus/tender.vim' }
end)
