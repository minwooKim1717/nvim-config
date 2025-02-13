-- Anatomy of a LuaSnip snippet
-- require("luasnip").snippet(
--   snip_params:table,  -- table of snippet parameters
--   nodes:table,        -- table of snippet nodes
--   opts:table|nil      -- *optional* table of additional snippet options
-- )


return {
-- Example: how to set snippet parameters
  s({trig="hr", dscr="href{}{}"},
	fmta(
	  "\\href{<>}{<>}",
	  { i(1, "url"), i(2, "display name"),}
	)
  ),

}
