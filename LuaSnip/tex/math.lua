return {
  s({trig="mm", dscr="inline math mode"},
	fmta(
	"$ <> $",
    { i(1) }
	)
  ),

  s({trig="eq", dscr="A LaTeX equation environment with label"},
	fmta(
	  [[
        \begin{equation} \label{<>}
            <>
        \end{equation}
	  ]],
    -- The insert node is placed in the <> angle brackets
    { i(1), i(2) }
	)
  ),

  s({trig="eq*", dscr="A LaTeX equation environment"},
	fmta(
	  [[
        \begin{equation*}
            <>
        \end{equation*}
	  ]],
    -- The insert node is placed in the <> angle brackets
    { i(1) }
	)
  ),

}
