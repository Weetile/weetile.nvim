-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('nvim-tree').setup {}

      -- Set custom keybinding for <leader>e to toggle nvim-tree
      vim.keymap.set('n', '<leader>e', function()
        require('nvim-tree.api').tree.toggle()
      end, { noremap = true, silent = true, desc = 'Toggle Nvim Tree' })
    end,
  },
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
  },
}
