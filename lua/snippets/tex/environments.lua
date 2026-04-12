return {
  -- The same equation snippet, using LuaSnip's fmt function.
  -- The snippet is not shorter, but it is more *human-readable*.
  s(
    { trig = '([^%a])eq', regTrig = true, dscr = 'A LaTeX equation environment', snippetType = 'autosnippet' },
    fmt( -- The snippet code actually looks like the equation environment it produces.
      [[
      \begin{equation}
          <>
      \end{equation}
    ]],
      -- The insert node is placed in the <> angle brackets
      { i(1) },
      -- This is where I specify that angle brackets are used as node positions.
      { delimiters = '<>' }
    )
  ),
  -- \frac
  s(
    { trig = '([^%a])ff', regTrig = true, dscr = "Expands 'ff' into '\frac{}{}'", snippetType = 'autosnippet' },
    fmt(
      '\\frac{<>}{<>}',
      {
        i(1),
        i(2),
      },
      { delimiters = '<>' } -- manually specifying angle bracket delimiters
    )
  ),

  -- Code for environment snippet
  s(
    { trig = '([^%a])env', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{<>}
          <>
      \end{<>}
    ]],
      {
        i(1),
        i(2),
        rep(1), -- this node repeats insert node i(1)
      }
    )
  ),

  s(
    { trig = '([^%a])iz', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{itemize}
          \item <>
      \end{itemize}
    ]],
      {
        i(1),
      }
    )
  ),

  s(
    { trig = '([^%a]|^)ez', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{enumerate}
          \item <>
      \end{enumerate}
    ]],
      {
        i(1),
      }
    )
  ),

  s({ trig = '(%w)*\\-', regTrig = true, snippetType = 'autosnippet' }, t 'item'),
}
