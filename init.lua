-- insures packer is installed
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

-- include plugins and their config
require('plugins')
require('plug_config.lsp_config.lspConfig')
require('plug_config.autopairs')
require('plug_config.colour')
require('plug_config.lualine')
require('plug_config.colorizer')
require('plug_config.comment')
require('plug_config.bufferline')
require('plug_config.gitsigns')
require('plug_config.autosave')
require('plug_config.nvim-tree')
require('plug_config.telescope')


require('general')
require('bindings')
require('commands')



