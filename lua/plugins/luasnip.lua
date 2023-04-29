return {
  "L3MON4D3/LuaSnip",
  version = "<CurrentMajor>.*",
  build = "make install_jsregexp",
  config = function()
    require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets" })
    require('luasnip').filetype_extend("javascript", { "javascriptreact" })
  end
}