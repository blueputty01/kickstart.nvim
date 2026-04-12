return {
  -- The same equation snippet, using LuaSnip's fmt function.
  -- The snippet is not shorter, but it is more *human-readable*.
  s(
    { trig = '^eq', regTrig = true, dscr = 'A LaTeX equation environment', snippetType = 'autosnippet' },
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
  -- Code for environment snippet
  s(
    { trig = '^env ', regTrig = true, snippetType = 'autosnippet' },
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
    { trig = '^iz ', regTrig = true, snippetType = 'autosnippet' },
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
    { trig = '^ez ', regTrig = true, snippetType = 'autosnippet' },
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

  s({ trig = '^(%w*)%- ', regTrig = true, snippetType = 'autosnippet' }, t '\\item'),

  s(
    { trig = '^`py', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{lstlisting}[language=Python]
      <>
      \end{lstlisting}
    ]],
      {
        i(1),
      }
    )
  ),
}
