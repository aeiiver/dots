vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- packer
    use 'wbthomason/packer.nvim'

    -- fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    -- change history for files
    use {
        'dinhhuy258/vim-local-history',
        branch = 'master',
        run = ':UpdateRemotePlugins'
    } 

    -- lsp
    use 'neovim/nvim-lspconfig'
    use 'lukas-reineke/lsp-format.nvim'

    use {
        'ms-jpq/coq_nvim',
        branch = 'coq',
        requires={{'ms-jpq/coq.artifacts', branch = ' artifacts'}}
    }

    -- nvim appearance
    use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/nvim-treesitter-context'
end)
