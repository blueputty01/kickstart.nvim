return {
  s(
    { trig = '^;# ', regTrig = true, snippetType = 'autosnippet' },
    fmt(
      '\\section{<>}',
      {
        i(1),
      },
      { delimiters = '<>' } -- manually specifying angle bracket delimiters
    )
  ),

  s(
    { trig = '^;## ', regTrig = true, snippetType = 'autosnippet' },
    fmt(
      '\\subsection{<>}',
      {
        i(1),
      },
      { delimiters = '<>' } -- manually specifying angle bracket delimiters
    )
  ),

  s(
    { trig = '^;### ', regTrig = true, snippetType = 'autosnippet' },
    fmt(
      '\\subsubsection{<>}',
      {
        i(1),
      },
      { delimiters = '<>' } -- manually specifying angle bracket delimiters
    )
  ),

  s(
    { trig = '^;#### ', regTrig = true, snippetType = 'autosnippet' },
    fmt(
      '\\paragraph{<>}',
      {
        i(1),
      },
      { delimiters = '<>' } -- manually specifying angle bracket delimiters
    )
  ),
}
