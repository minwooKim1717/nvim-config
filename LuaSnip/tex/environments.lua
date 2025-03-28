return {
  s({trig="env", dscr="begin environment"},
	fmta(
	  [[
        \begin{<>} \label{<>}
            <>
        \end{<>}
	  ]],
    { i(1), i(2), i(3), rep(1) }
	)
  ),

  s({trig="bit", dscr="begin itemize"},
	fmta(
	  [[
        \begin{itemize}
            \item <>
        \end{itemize}
	  ]],
    { i(0) }
	)
  ),


  s({trig="fig", dscr="begin figure"},
	fmta(
	  [[
		\begin{figure}[ht]
		\centering
		\includegraphics[width=\textwidth]{<>}
		\caption{<>}
		\label{fig:<>}
		\end{figure}
	  ]],
    { i(1), i(2), i(3) }
	)
  ),

  s({trig="subfig", dscr="begin (2)-subfigure"},
	fmta(
	  [[
		\begin{figure}[ht]
		    \centering
		    \begin{subfigure}{0.48\textwidth}
                \centering
		        \includegraphics[width=\linewidth]{<>}
		        \caption{<>}
		        \label{fig:<>}
		    \end{subfigure}
            \hfill
		    \begin{subfigure}{0.48\textwidth}
                \centering
		        \includegraphics[width=\linewidth]{<>}
		        \caption{<>}
		        \label{fig:<>}
		    \end{subfigure}
		    \caption{<>}
		    \label{fig:<>}
		\end{figure}
	  ]],
    { i(1, "path-subfig1"), 
      i(2, "caption-subfig1"), 
      i(3, "label-subfig1"),
      i(4, "path-subfig2"), 
      i(5, "caption-subfig2"), 
      i(6, "label-subfig2"),
      i(7, "caption-fig"),
      i(8, "label-fig"),
    }
	)
  ),

  -- Sections ...
  s({trig="sec", dscr="Section"},
	fmta("\\section{<>}",
	  { i(1) }
	)
  ),

  s({trig="subsec", dscr="Sub-Section"},
	fmta("\\subsection{<>}",
	  { i(1) }
	)
  ),

  s({trig="subbsec", dscr="Sub-sub-Section"},
	fmta("\\subsubsection{<>}",
	  { i(1) }
	)
  ),

  -- Citations ...
  s({trig="cite", dscr="Sub-sub-Section"},
	fmta("\\cite{<>}",
	  { i(1) }
	)
  ),

  s({trig="citep", dscr="Sub-sub-Section"},
	fmta("\\citep{<>}",
	  { i(1) }
	)
  ),

  s({trig="citeauth", dscr="Sub-sub-Section"},
	fmta("\\citeauthor{<>}",
	  { i(1) }
	)
  ),
}
