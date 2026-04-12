return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.vimtex_view_method = 'skim'
    vim.g.vimtex_compiler_latexmk = {
      out_dir = 'build',
    }

    -- 1. Define the focus function
    local function tex_focus_vim()
      vim.fn.system 'open -a WezTerm'
      vim.cmd 'redraw!'
    end

    -- 2. Create the autocommand
    local vimtex_group = vim.api.nvim_create_augroup('vimtex_event_focus', { clear = true })
    vim.api.nvim_create_autocmd('User', {
      pattern = 'VimtexEventViewReverse',
      group = vimtex_group,
      callback = function()
        tex_focus_vim()
      end,
    })
  end,
}
