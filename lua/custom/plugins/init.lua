-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  {
    'mrcjkb/rustaceanvim',
    version = '^8', -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '^1.15',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local api = require 'nvim-tree.api'
      vim.keymap.set('n', '<leader>e', api.tree.toggle, { desc = 'Explorer' })
      vim.opt.termguicolors = true
      require('nvim-tree').setup {}
    end,
  },
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      vim.keymap.set({ 't', 'n' }, '<C-\\>', '<cmd>ToggleTerm<CR>', { desc = 'Toggle terminal' })
      require('toggleterm').setup {
        -- direction = 'float',
        -- float_opts = {
        -- border = 'curved',
        -- },
      }
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require('lualine').setup {} end,
  },
}
