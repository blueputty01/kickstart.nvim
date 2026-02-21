vim.opt.guicursor:append 'a:blinkon0'

return {
  {
    'folke/snacks.nvim',
    lazy = false,
    ---@type snacks.Config
    opts = {
      explorer = {
        -- your explorer configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
      files = {
        ignored = true,
        hidden = true,
      },
      picker = {
        ignored = true,
        hidden = true,
        exclude = {
          '.git',
          -- "node_modules",
        },
        sources = {
          files = { ignored = true, hidden = true },
          explorer = { ignored = true, hidden = true },
          grep = { ignored = true, hidden = true },
          grep_word = { ignored = true, hidden = true },
          grep_buffers = { ignored = true, hidden = true },
        },
      },
    },
    keys = {
      {
        '<leader>e',
        function()
          Snacks.explorer()
        end,
        desc = 'File Explorer',
      },
    },
  },
}
