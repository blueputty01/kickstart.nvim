local helpers = require 'utils.luasnip'
local get_visual = helpers.get_visual

local in_mathzone = function()
  -- The `in_mathzone` function requires the VimTeX plugin
  return vim.fn['vimtex#syntax#in_mathzone']() == 1
end

return {
  s(
    { trig = '$$', regTrig = true, snippetType = 'autosnippet' },
    fmta('<>$<>$', {
      f(function(_, snip)
        return snip.captures[1]
      end),
      d(1, get_visual),
    })
  ),
  s(
    { trig = '\\min', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\min_{<>}\\left\\{<>\\right\\}', {
      i(1),
      i(2),
    })
  ),
  s(
    { trig = '\\max', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\max_{<>}\\left\\{<>\\right\\}', {
      i(1),
      i(2),
    })
  ),
  s(
    { trig = '\\sum', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\sum_{<>}^{<>}', {
      i(1),
      i(2),
    })
  ),
  s(
    { trig = '|', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('|<>|', {
      i(1),
    })
  ),
  s(
    { trig = 'ff', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\frac{<>}{<>}', {
      i(1),
      i(2),
    })
  ),
  s({ trig = ';a', snippetType = 'autosnippet' }, {
    t '\\alpha',
  }),
  s({ trig = ';b', snippetType = 'autosnippet' }, {
    t '\\beta',
  }),
  s({ trig = ';g', snippetType = 'autosnippet' }, {
    t '\\gamma',
  }),
  s({ trig = ';R', snippetType = 'autosnippet' }, {
    t '\\mathbb{R}',
  }),
  s(
    { trig = ';}', snippetType = 'autosnippet' },
    fmta('\\{<>\\}', {
      i(1),
    })
  ),
  s(
    { trig = ';O', snippetType = 'autosnippet' },
    fmta('\\mathcal{O}(<>)', {
      i(1),
    })
  ),
  s({ trig = '<=', condition = in_mathzone, snippetType = 'autosnippet' }, t '\\leq'),
  s({ trig = '>=', condition = in_mathzone, snippetType = 'autosnippet' }, t '\\geq'),
  s(
    { trig = ';te', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\textrm{<>}', {
      i(1),
    })
  ),
  s(
    { trig = ';op', condition = in_mathzone, snippetType = 'autosnippet' },
    fmta('\\operatorname{<>}(<>)', {
      i(1),
      i(2),
    })
  ),
  s({ trig = '%^th', condition = in_mathzone, snippetType = 'autosnippet' }, t '^\\text{th}'),
}
