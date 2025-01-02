-- [[ Setup vim global options ]]
require 'options'

-- [[ Setup keymaps]]
require 'keymaps'

-- [[ Autocommands ]]
require 'autocmds'

-- Specify specific lua version to use
local lua_path = '~/.luaver/lua/5.1.5/bin/'
local luarocks_path = '~/.luaver/luarocks/3.9.2_5.1/bin/'

if not string.find(vim.env.PATH, lua_path) and not string.find(vim.env.PATH, luarocks_path) then
  vim.env.PATH = lua_path .. ':' .. luarocks_path .. ':' .. vim.env.PATH
end

-- Specify specific python env
vim.g.python3_host_prog = '~/src/miniforge3/envs/nvim/bin/python'

-- [[ Install `lazy.nvim` plugin manager ]]
--    See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require 'plugins'
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
