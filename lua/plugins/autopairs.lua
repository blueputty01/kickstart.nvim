return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    local Rule = require 'nvim-autopairs.rule'
    local npairs = require 'nvim-autopairs'
    local cond = require 'nvim-autopairs.conds'

    -- You MUST call setup first
    npairs.setup {}

    npairs.add_rules {
      Rule('$', '$', { 'tex', 'latex' }):with_pair(cond.not_after_regex '%%'),
    }
  end,
}
