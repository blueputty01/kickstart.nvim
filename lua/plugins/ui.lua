vim.opt.guicursor:append 'a:blinkon0'

return {
  -- {
  --   'folke/snacks.nvim',
  --   lazy = false,
  --   ---@type snacks.Config
  --   opts = {
  --     explorer = {
  --       -- your explorer configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     },
  --     files = {
  --       ignored = true,
  --       hidden = true,
  --     },
  --     picker = {
  --       ignored = true,
  --       hidden = true,
  --       exclude = {
  --         '.git',
  --         -- "node_modules",
  --       },
  --       sources = {
  --         files = { ignored = true, hidden = true },
  --         explorer = { ignored = true, hidden = true },
  --         grep = { ignored = true, hidden = true },
  --         grep_word = { ignored = true, hidden = true },
  --         grep_buffers = { ignored = true, hidden = true },
  --       },
  --     },
  --   },
  --   keys = {
  --     {
  --       '<leader>e',
  --       function()
  --         Snacks.explorer()
  --       end,
  --       desc = 'File Explorer',
  --     },
  --   },
  -- },
  --
  -- {
  --   'nvim-mini/mini.files',
  --   version = '*', -- Use the stable version
  --   opts = {
  --     windows = {
  --       preview = true,
  --       width_focus = 30,
  --       width_preview = 30,
  --     },
  --     options = {
  --       -- Use as default explorer (replaces netrw)
  --       use_as_default_explorer = true,
  --     },
  --   },
  --   keys = {
  --     {
  --       '<leader>e',
  --       function()
  --         MiniFiles.open()
  --       end,
  --       desc = 'Open mini.files',
  --     },
  --   },
  --   config = function(_, opts)
  --     require('mini.files').setup(opts)
  --   end,
  -- },
  'mikavilpas/yazi.nvim',
  version = '*', -- use the latest stable version
  event = 'VeryLazy',
  dependencies = {
    { 'nvim-lua/plenary.nvim', lazy = true },
  },
  keys = {
    -- 👇 in this section, choose your own keymappings!
    {
      '<leader>e',
      -- mode = { 'n', 'v' },
      '<cmd>Yazi<cr>',
      desc = 'Open yazi at the current file',
    },
    {
      -- Open in the current working directory
      '<leader>E',
      '<cmd>Yazi cwd<cr>',
      desc = "Open the file manager in nvim's working directory",
    },
    {
      '<c-up>',
      '<cmd>Yazi toggle<cr>',
      desc = 'Resume the last yazi session',
    },
  },
  ---@type YaziConfig | {}
  opts = {
    -- if you want to open yazi instead of netrw, see below for more info
    open_for_directories = false,
    keymaps = {
      show_help = '<f1>',
    },
  },
  -- 👇 if you use `open_for_directories=true`, this is recommended
  init = function()
    -- mark netrw as loaded so it's not loaded at all.
    --
    -- More details: https://github.com/mikavilpas/yazi.nvim/issues/802
    vim.g.loaded_netrwPlugin = 1
  end,
}
