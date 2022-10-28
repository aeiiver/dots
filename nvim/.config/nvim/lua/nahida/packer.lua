local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

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

    -- appearance
    use "lukas-reineke/indent-blankline.nvim"
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

    -- colorscheme
    use { 'jacoborus/tender.vim' }

    -- sync when doing a fresh packer installation
    if packer_bootstrap then
        require('packer').sync()
    end
end)
