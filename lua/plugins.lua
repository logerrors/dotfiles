local packer = require("packer")
packer.startup({
  function(use)
    use('wbthomason/packer.nvim')
    use('folke/tokyonight.nvim')
    use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
    use({ "akinsho/bufferline.nvim", requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" }})
    use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons" } })
    use("arkav/lualine-lsp-progress")
    use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }
    use({ "nvim-treesitter/nvim-treesitter" })
  end,
  config = {
    max_jobs = 8,
    display = {
    open_fn = function()
        return require("packer.util").float({ border = "single" })
    end,
    },
  },
})
