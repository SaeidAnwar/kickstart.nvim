return {
  {
    'mbbill/undotree',
    init = function()
      vim.g.undotree_SetFocusWhenToggle = 1
      vim.g.undotree_WindowLayout = 2
      vim.g.undotree_SplitWidth = 35
    end,
    keys = {
      {
        '<leader>u',
        '<cmd>UndotreeToggle<CR>',
        desc = 'Toggle Undotree',
      },
    },
  },
}
