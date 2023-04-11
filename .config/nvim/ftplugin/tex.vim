   map <F5> :w!<CR>\ll
   map <F6> :w!<CR>:!setsid -f zathura %:t:r.pdf<CR><CR>
   map <F8> :w!sp references.bib<CR><CR>
   map <F11> :vsp /home/estatuadetamal/.config/nvim/ftplugin/tex.vim<CR>


  "V-mode
 vnoremap ,bf xi\textbf{}<Esc>P
 vnoremap ,it xi\textit{}<Esc>P
 vnoremap ,ud xi\underline{}<Esc>P
 vnoremap ,tx xi\text{}<Esc>P
 vnoremap ,( xi\qty()<Esc>P
 vnoremap ,[ xi\qty[]<Esc>P
 vnoremap ,box xi\boxed{}<Esc>P
 vnoremap ,m xi$$<Esc>P
 vnoremap ,M xi$$$$<Esc>hP
 vnoremap ,' xi\frac{}{}<++><Esc>6hP<Esc>
 vnoremap ,¿ xi\frac{}{}<++><Esc>6hP<Esc>$5hi
 vnoremap ,ca xi\cancel{}<Esc>P
 vnoremap ,bc xi\bcancel{}<Esc>P
 vnoremap ,dv xi\dv{<Esc>pa}{}<++><Esc>4hi
 vnoremap ,pd xi\par{<Esc>pa}{}<++><Esc>4hi
 
  "general
  inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
  nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
  nnoremap ,M i$$ $$<Enter><++><Esc>k$2hi
         " Word count:
  map <leader>w :w !detex \| wc -w<CR>
         " Plantillas
  nnoremap ,beamer :-1read $HOME/.plantillasvim/beamer.tex<CR>
  nnoremap ,art    :-1read $HOME/.plantillasvim/article.tex<CR>
  nnoremap ,note   :-1read $HOME/.plantillasvim/notes.tex<CR>
  nnoremap ,anote  :-1read $HOME/.plantillasvim/notas.tex<CR>
  nnoremap ,tab  :-1read $HOME/.plantillasvim/tables.tex<CR>
  nnoremap ,lo     :-1read $HOME/.plantillasvim/lorem.tex<CR>
  nnoremap ,cv     :-1read $HOME/.plantillasvim/CV.tex<CR>
         "Texto
  inoremap ,p () <++><Esc>5hi
  inoremap ,em \emph{}<++><Esc>T{i
  inoremap ,bf \textbf{}<++><Esc>T{i
  inoremap ,it \textit{}<++><Esc>T{i
  inoremap ,ud \underline{}<++><Esc>T{i
  inoremap ,sc \textsc{}<Space><++><Esc>T{i
  inoremap ,nl  \\<Enter>
	 "Estructura sin títulos
  inoremap ,chap \chapter*{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,sec \section*{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,ssec \subsection*{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,sssec \subsubsection*{}<Enter><Enter><++><Esc>2kf}i
	 "Estructura
  inoremap ,achap \chapter{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,asec \section{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,assec \subsection{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,asssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
  inoremap ,cols \begin{multicols}{}<Enter><++><Enter>\end{multicols}<Esc>2k$i "Listas
  inoremap ,ol \begin{enumerate}\setlength\itemsep{0.25em}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space> 
  inoremap ,ul \begin{itemize}\setlength\itemsep{0.25em}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
  inoremap ,li <Enter>\item<Space>
         "Especial
  inoremap ,wrap \begin{wrapfigure}<Enter><Enter>\end{wrapfigure}<Enter><Enter><++><Esc>3kA\item<Space> 
  inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
  inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
  inoremap ,fi \begin{figure}[ht]<Enter>\centering<Enter>\includegraphics[width=0.5\columnwidth]{}<Enter>\caption{<++>}<Enter>\label{fig:<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>5k$i
  inoremap ,di \begin{figure}[ht]<Enter>\centering<Enter>\def\svgwidth{\columnwidth}<Enter>\input{.pdf_tex}<Enter>\caption{<++>}<Enter>\label{fig:<++>}<Enter>\end{figure}<Enter><Enter><++><Esc>5k$8hi
        "Beamer
          inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
          inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	"Random  
	  inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
          inoremap ,xl \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
          inoremap ,ref \ref{}<Space><Esc>T{i
          inoremap ,tab \begin{tabular}<Enter><Enter>\end{tabular}<Enter><Enter>><Esc>    4kA{}<Esc>i
          inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><    Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
          inoremap ,ct \textcite{}<++><Esc>T{i
          inoremap ,cp \parencite{}<++><Esc>T{i
          inoremap ,can \cand{}<Tab><++><Esc>T{i
          inoremap ,con \const{}<Tab><++><Esc>T{i
          inoremap ,vio \vio{}<Tab><++><Esc>T{i
          inoremap ,href \href{}{<++>}<Space><++><Esc>2T{i
          inoremap ,st <Esc>F{i*<Esc>f}i
          inoremap ,bt {\blindtext}
          inoremap ,nu $\varnothing$
          inoremap ,rn (\ref{})<++><Esc>F}i
          inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	  inoremap ,tb \begin{center}<Enter>\boxed{<Enter>\begin{minipage}{20em}<Enter>\end{minipage}<Enter>}<Enter>\end{center}<esc>2kO
	  inoremap ,mp \begin{minipage}{20em}<Enter><Enter>\end{minipage}<Enter><++><esc>2kO
         """física
          inoremap ,elec $e^{-}$
         """math
          inoremap ,m $$<++><Esc>4hi
          inoremap ,M $$ $$<Enter><++><Esc>k$2hi
          inoremap ,txt \text{}<Esc>i
          inoremap ,por \times
          inoremap ,box \begin{center}<Enter>\end{center}<Esc>O\boxed{<Enter>}<esc>O
          inoremap ,dp \begin{displaymath}<Enter>\end{displaymath}<Esc>O
          inoremap ,eq \begin{equation}<Enter>\end{equation}<Esc>O
          inoremap ,cases \begin{cases}<Enter>\end{cases}<Esc>O
          inoremap ,tt \texttt{}<Space><++><Esc>T{i
	  inoremap ,( \qty() <++><Esc>5hi
	  inoremap ,[ \qty[] <++><Esc>5hi
	  inoremap ,{ ^{} <++><Esc>5hi
	  inoremap ,- _{} <++><Esc>5hi
	  inoremap ,' \frac{}{<++>}<++><Esc>10hi
	  inoremap ,binom \binom{}{<++>}<++><Esc>10hi
	  inoremap ,v \vec{}<Esc>i
	  inoremap ,expval \expval{}<++><esc>4hi
	  inoremap ,int \int_{}^{<++>}<++><Esc>11hi
	  inoremap ,infint \int_{-\infty}^{\infty}
	  inoremap ,dx \dd{x}
	  inoremap ,dd \dd{}<++><Esc>4hi
	  inoremap ,sum \sum_{}^{<++>}<++><Esc>11hi
	  inoremap ,lim \lim_{\to<++>}<++><Esc>11hi
	  inoremap ,pdv \pdv{}{<++>}<++><Esc>10hi
	  inoremap ,spdv \pdv[2]{}{<++>}<++><Esc>10hi
	  inoremap ,npdv \pdv[]{<++>}{<++>}<++><Esc>15hi
	  inoremap ,dv \dv{}{<++>}<++><Esc>10hi
	  inoremap ,ndv \dv[]{<++>}{<++>}<++><Esc>16hi
	  inoremap ,Re \mathbb{R}
	  inoremap ,Nat \mathbb{N}
"      %  inoremap ,in \in
	  inoremap ,* ^* 
	  inoremap ,func :<++>\rightarrow <++><Esc>20hi
	  inoremap ,set \{\}<Esc>hi
	  inoremap ,sq \sqrt{} <++><Esc>5hi
	  inoremap ,abs \abs{} <++><Esc>5hi
	  inoremap ,val \val{} <++><Esc>5hi
"Symbolos
	  inoremap ,psi \psi
	  inoremap ,theta \theta 
	  inoremap ,hbar \hbar 
	  inoremap ,dot \dot{}<++><esc>4hi

	 """lógica
          inoremap ,entonces \Rightarrow
          inoremap ,ra \rightarrow 
""Test	 
          inoremap ² ^2
          inoremap ³ ^3
          inoremap ⁴ ^4
          inoremap ⁵ ^5
          inoremap ⁶ ^6
          inoremap ⁷ ^7
          inoremap ⁸ ^8
          inoremap ⁸ ^9
          inoremap ⁻1 ^{-1}
          inoremap ⁻2 ^{-2}
          inoremap ⁻3 ^{-3}
          inoremap ⁻4 ^{-4}
