-- ----------------------------------------------------------------------------
-- Summary: When `LS_SELECT_RAW` is populated with a visual selection, the function
-- returns an insert node whose initial text is set to the visual selection.
-- When `LS_SELECT_RAW` is empty, the function simply returns an empty insert node.
local get_visual = function(args, parent)
  if (#parent.snippet.env.LS_SELECT_RAW > 0) then
    return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
  else  -- If LS_SELECT_RAW is empty, return a blank insert node
    return sn(nil, i(1))
  end
end
-- You only need to write the get_visual function once per snippet file
-- ----------------------------------------------------------------------------


return {
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


  -- Text effects 
  -- \textbf, \textit, \texttt, ...
  s({trig="tt", dscr="text tt"},
	fmta("\\texttt{<>}",
	  { d(1, get_visual) }
	)
  ),

  s({trig="tit", dscr="text italic"},
	fmta("\\textit{<>}",
	  { d(1, get_visual) }
	)
  ),

  s({trig="tbf", dscr="text boldface"},
	fmta("\\textbf{<>}",
	  { d(1, get_visual) }
	)
  ),


}
