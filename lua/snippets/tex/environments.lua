return {
  -- The same equation snippet, using LuaSnip's fmt function.
  -- The snippet is not shorter, but it is more *human-readable*.
  s(
    { trig = '^(%s*)eq', regTrig = true, dscr = 'A LaTeX equation environment', snippetType = 'autosnippet' },
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
    { trig = '^(%s*)env', regTrig = true, snippetType = 'autosnippet' },
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
    { trig = '^(%s*)cases', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{cases}
          <>
      \end{cases}
    ]],
      {
        i(1),
      }
    )
  ),

  s(
    { trig = '^(%s*)i%-', regTrig = true, snippetType = 'autosnippet' },
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
    { trig = '^(%s*)e%-', regTrig = true, snippetType = 'autosnippet' },
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

  s({ trig = '^(%s*)%- ', regTrig = true, snippetType = 'autosnippet' }, t '\\item'),

  s(
    { trig = '^(%s*)``py', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{lstlisting}[language=Python,mathescape=true]
      <>
      \end{lstlisting}
    ]],
      {
        i(1),
      }
    )
  ),

  s(
    { trig = '^(%s*)img', regTrig = true, snippetType = 'autosnippet' },
    fmta(
      [[
      \begin{figure}[!h]
        \centering
        \includegraphics[width=0.5\textwidth]{figures/<>.png}
      \end{figure}
      ]],
      {
        i(1),
      }
    )
  ),
}
