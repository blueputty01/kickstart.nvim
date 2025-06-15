return {
  'folke/persistence.nvim',
  event = 'BufReadPre', -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
    need = 0,
  },
  keys = {
    {
      '<leader>pc',
      function()
        require('persistence').load()
      end,
      desc = 'Load [c]urrent',
    },

    {
      '<leader>pS',
      function()
        require('persistence').select()
      end,
      desc = '[S]elect',
    },

    -- load the last session
    {
      '<leader>pl',
      function()
        require('persistence').load { last = true }
      end,
      desc = 'Load [l]ast',
    },

    -- stop Persistence => session won't be saved on exit
    {
      '<leader>ps',
      function()
        require('persistence').stop()
      end,
      desc = '[s]top',
    },
  },
}
