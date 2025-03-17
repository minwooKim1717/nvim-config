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
