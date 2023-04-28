return {
  'hrsh7th/nvim-cmp',
  dependencies = {
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'windwp/nvim-autopairs',
    'onsails/lspkind-nvim',
    'saadparwaiz1/cmp_luasnip',
    {
      "L3MON4D3/LuaSnip",
      version = "<CurrentMajor>.*",
      build = "make install_jsregexp"
    }
  },
  event = "VeryLazy",
  config = function()
    require "alpha.cmp"
  end
}
