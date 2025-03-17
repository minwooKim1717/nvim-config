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

  -- Find a more convenient way to do this ...
  s({trig="*_", dscr="subscript"},
	fmta(
	"_{<>}",
    { i(1) }
	)
  ),

  s({trig="**", dscr="super-script"},
	fmta(
	"^{<>}",
    { i(1) }
	)
  ),

  s({trig="sum", dscr="summation"},
	fmta(
	"\\sum_{<>}^{<>}",
    { i(1), i(2) }
	)
  ),

  s({trig="ff", dscr="math fraction"},
	fmta(
	"\\frac{<>}{<>}",
    { i(1), i(2) }
	)
  ),

  s({trig="sqrt", dscr="square root"},
	fmta(
	"\\sqrt{<>}",
    { i(1) }
	)
  ),

  -- s({trig = '([%a%)%]%}])__', regTrig = true, wordTrig = false, dscr="math subscript"},
  -- fmta(
  --   "<>_{<>}",
  --   {
  --     f( function(_, snip) return snip.captures[1] end ),
  --     i(1)
  --   }
  --   )
  -- ),

  -- s({trig = '([%a%)%]%}])**', regTrig = true, wordTrig = false, dscr="math upscript"},
  -- fmta(
  --   "<>^{<>}",
  --   {
  --     f( function(_, snip) return snip.captures[1] end ),
  --     i(1)
  --   }
  --   )
  -- ),

  -- MATH FONTS --
  -- Greek letter snippets, autotriggered for efficiency
  s({trig=";a", snippetType="autosnippet"},
 	{
    	t("\\alpha"),
  	}
  ),

  s({trig=";b", snippetType="autosnippet"},
 	{
    	t("\\beta"),
  	}
  ),

  s({trig=";g", snippetType="autosnippet"},
 	{
    	t("\\gamma"),
  	}
  ),
  
  s({trig=";G", snippetType="autosnippet"},
 	{
    	t("\\Gamma"),
  	}
  ),

  s({trig=";d", snippetType="autosnippet"},
 	{
    	t("\\delta"),
  	}
  ),

  s({trig=";D", snippetType="autosnippet"},
 	{
    	t("\\Delta"),
  	}
  ),

  s({trig=";e", snippetType="autosnippet"},
 	{
    	t("\\epsilon"),
  	}
  ),

  s({trig=";ve", snippetType="autosnippet"},
 	{
    	t("\\varepsilon"),
  	}
  ),

  s({trig=";z", snippetType="autosnippet"},
 	{
    	t("\\zeta"),
  	}
  ),

  s({trig=";h", snippetType="autosnippet"},
 	{
    	t("\\eta"),
  	}
  ),

  s({trig=";th", snippetType="autosnippet"},
 	{
    	t("\\theta"),
  	}
  ),

  s({trig=";vth", snippetType="autosnippet"},
 	{
    	t("\\vartheta"),
  	}
  ),

  s({trig=";Th", snippetType="autosnippet"},
 	{
    	t("\\Theta"),
  	}
  ),

  s({trig=";i", snippetType="autosnippet"},
 	{
    	t("\\iota"),
  	}
  ),

  s({trig=";k", snippetType="autosnippet"},
 	{
    	t("\\kapp"),
  	}
  ),

  s({trig=";l", snippetType="autosnippet"},
 	{
    	t("\\lambda"),
  	}
  ),

  s({trig=";L", snippetType="autosnippet"},
 	{
    	t("\\Lambda"),
  	}
  ),

  s({trig=";r", snippetType="autosnippet"},
 	{
    	t("\\rho"),
  	}
  ),

  s({trig=";vr", snippetType="autosnippet"},
 	{
    	t("\\varrho"),
  	}
  ),

  s({trig=";s", snippetType="autosnippet"},
 	{
    	t("\\sigma"),
  	}
  ),

  s({trig=";S", snippetType="autosnippet"},
 	{
    	t("\\Sigma"),
  	}
  ),

  s({trig=";up", snippetType="autosnippet"},
 	{
    	t("\\upsilon"),
  	}
  ),

  s({trig=";Up", snippetType="autosnippet"},
 	{
    	t("\\Upsilon"),
  	}
  ),

  s({trig=";vph", snippetType="autosnippet"},
 	{
    	t("\\varphi"),
  	}
  ),

  s({trig=";o", snippetType="autosnippet"},
 	{
    	t("\\omega"),
  	}
  ),

}
