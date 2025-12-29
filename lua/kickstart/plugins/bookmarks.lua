return {
  'LintaoAmons/bookmarks.nvim',
  dependencies = {
    'nvim-telescope/telescope.nvim',
    'kkharji/sqlite.lua',
  },
  config = function()
    -- 1. Setup SQLite for macOS
    local sqlite_path = '/opt/homebrew/opt/sqlite/lib/libsqlite3.dylib'
    if vim.fn.filereadable(sqlite_path) == 1 then
      vim.g.sqlite_clib_path = sqlite_path
    end

    -- 2. Setup the plugin
    require('bookmarks').setup {
      save_domain = 'local', -- Saves marks for this project
    }

    -- 3. KEYMAPS
    local map = vim.keymap.set
    map('n', '<leader>mm', '<cmd>BookmarksMark<cr>', { desc = '[M]ark with name' })
    map('n', '<leader>mt', '<cmd>BookmarksTree<cr>', { desc = '[T]oggle bookmarks tree' })
    map('n', '<leader>sm', '<cmd>BookmarksGoto<cr>', { desc = '[S]earch [M]arks' })
  end,
}
