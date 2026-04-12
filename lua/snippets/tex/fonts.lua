local helpers = require 'utils.luasnip'
local get_visual = helpers.get_visual

return {
  -- Example: italic font implementing visual selection
  s(
    { trig = 'tii', dscr = "Expands 'tii' into LaTeX's textit{} command.", snippetType = 'autosnippet' },
    fmta('\\textit{<>}', {
      d(1, get_visual),
    })
  ),

  -- Example: bold font implementing visual selection
  s(
    { trig = 'tbb', dscr = "Expands 'tbb' into LaTeX's textbf{} command.", snippetType = 'autosnippet' },
    fmta('\\textbf{<>}', {
      d(1, get_visual),
    })
  ),
}
