---------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter


require('nvim-treesitter.configs').setup {
    ensure_installed = { "c", "lua", "rust", "javascript","json","html","scss","typescript","pug","css"},
  highlight = {
    enable = true,
  },
}
require('nvim-treesitter.install').compilers = { 'clang', 'gcc'}
