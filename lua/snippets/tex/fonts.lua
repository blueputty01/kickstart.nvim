local helpers = require 'lua.utils.luasnip'

return {
  -- Example: italic font implementing visual selection
  s(
    { trig = 'tii', dscr = "Expands 'tii' into LaTeX's textit{} command." },
    fmta('\\textit{<>}', {
      d(1, get_visual),
    })
  ),

  -- Example: bold font implementing visual selection
  s(
    { trig = 'tbb', dscr = "Expands 'tbb' into LaTeX's textbf{} command." },
    fmta('\\textbf{<>}', {
      d(1, get_visual),
    })
  ),
}
