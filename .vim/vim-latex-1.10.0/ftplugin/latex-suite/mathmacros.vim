"=============================================================================
" 	     File: mathmacros.vim
"      Author: Mikolaj Machowski
"     Created: Tue Apr 23 06:00 PM 2002 PST
" 
"  Description: macros for everything mathematical in latex.
"=============================================================================

if !(has('gui_running') && g:Tex_MathMenus && g:Tex_Menus)
	finish
endif

let s:MathMenuName = g:Tex_MenuPrefix.'&Math.'

function! Tex_MathMenuRemove()
	exe 'silent! aunmenu '.s:MathMenuName
endfunction

let s:pA = 'amenu <silent> '.g:Tex_NextMenuLocation.' '.s:MathMenuName
let g:Tex_NextMenuLocation = g:Tex_NextMenuLocation + 1

" brackets and dollars {{{
exe s:pA.'\\&[\ \\]                 <plug><C-r>=IMAP_PutTextWithMovement("\\[<++>\\]<++>")<cr>'
exe s:pA.'\\&(\ \\)                 <plug><C-r>=IMAP_PutTextWithMovement("\\(<++>\\)<++>")<cr>'
exe s:pA.'&$\ $                     <plug>$$'
exe s:pA.'-sepmath1- :'
" }}}
" MATH arrows {{{
let s:pA1 = s:pA."&Arrows."
exe s:pA1.'Leftarrow                <plug>\leftarrow '
exe s:pA1.'leftarrow                <plug>\leftarrow'
exe s:pA1.'longleftarrow            <plug>\longleftarrow '
exe s:pA1.'Leftarrow                <plug>\Leftarrow '
exe s:pA1.'Longleftarrow            <plug>\Longleftarrow '
exe s:pA1.'rightarrow               <plug>\rightarrow '
exe s:pA1.'longrightarrow           <plug>\longrightarrow '
exe s:pA1.'Rightarrow               <plug>\Rightarrow '
exe s:pA1.'Longrightarrow           <plug>\Longrightarrow '
exe s:pA1.'leftrightarrow           <plug>\leftrightarrow '
exe s:pA1.'longleftrightarrow       <plug>\longleftrightarrow '
exe s:pA1.'Leftrightarrow           <plug>\Leftrightarrow '
exe s:pA1.'Longleftrightarrow       <plug>\Longleftrightarrow '
exe s:pA1.'uparrow                  <plug>\uparrow '
exe s:pA1.'Uparrow                  <plug>\Uparrow '
exe s:pA1.'downarrow                <plug>\downarrow '
exe s:pA1.'Downarrow                <plug>\Downarrow '
exe s:pA1.'updownarrow              <plug>\updownarrow '
exe s:pA1.'Updownarrow              <plug>\Updownarrow '
exe s:pA1.'nearrow                  <plug>\nearrow '
exe s:pA1.'searrow                  <plug>\searrow '
exe s:pA1.'swarrow                  <plug>\swarrow '
exe s:pA1.'nwarrow                  <plug>\nwarrow '
exe s:pA1.'mapsto                   <plug>\mapsto '
exe s:pA1.'leadsto                  <plug>\leadsto '
exe s:pA1.'longmapsto               <plug>\longmapsto '
exe s:pA1.'hookleftarrow            <plug>\hookleftarrow '
exe s:pA1.'hookrightarrow           <plug>\hookrightarrow '
exe s:pA1.'leftharpoonup            <plug>\leftharpoonup '
exe s:pA1.'leftharpoondown          <plug>\leftharpoondown '
exe s:pA1.'rightharpoonup           <plug>\rightharpoonup '
exe s:pA1.'rightharpoondown         <plug>\rightharpoondown '
exe s:pA1.'rightleftharpoons        <plug>\rightleftharpoons '
exe s:pA1.'overleftarrow            <plug>\overleftarrow '
exe s:pA1.'overrightarrow           <plug>\overrightarrow '
exe s:pA1.'overleftrightarrow       <plug>\overleftrightarrow '
exe s:pA1.'underleftarrow           <plug>\underleftarrow '
exe s:pA1.'underrightarrow          <plug>\underrightarrow '
exe s:pA1.'underleftrightarrow      <plug>\underleftrightarrow '
exe s:pA1.'xleftarrow               <plug>\xleftarrow '
exe s:pA1.'xrightarrow              <plug>\xrightarrow '
" }}}


" MATH nArrows {{{
let s:pA1a = s:pA."&nArrows."
exe s:pA1a.'nleftarrow              <plug>\nleftarrow '
exe s:pA1a.'nLeftarrow              <plug>\nLeftarrow '
exe s:pA1a.'nleftrightarrow         <plug>\nleftrightarrow '
exe s:pA1a.'nrightarrow             <plug>\nrightarrow '
exe s:pA1a.'nRightarrow             <plug>\nRightarrow '
" }}}
" MATH Arrows2 {{{
let s:pA1a = s:pA."Arrows2."
exe s:pA1a.'dashleftarrow               <plug>\dashleftarrow '
exe s:pA1a.'leftleftarrows              <plug>\leftleftarrows '
exe s:pA1a.'leftrightarrows             <plug>\leftrightarrows '
exe s:pA1a.'Lleftarrow                  <plug>\Lleftarrow '
exe s:pA1a.'twoheadleftarrow            <plug>\twoheadleftarrow '
exe s:pA1a.'leftarrowtail               <plug>\leftarrowtail '
exe s:pA1a.'leftrightharpoons           <plug>\leftrightharpoons '
exe s:pA1a.'Lsh                         <plug>\Lsh '
exe s:pA1a.'looparrowleft               <plug>\looparrowleft '
exe s:pA1a.'curvearrowleft              <plug>\curvearrowleft '
exe s:pA1a.'circlearrowleft             <plug>\circlearrowleft '
exe s:pA1a.'dashrightarrow              <plug>\dashrightarrow '
exe s:pA1a.'rightrightarrows            <plug>\rightrightarrows '
exe s:pA1a.'rightleftarrows             <plug>\rightleftarrows '
exe s:pA1a.'Rrightarrow                 <plug>\Rrightarrow '
exe s:pA1a.'twoheadrightarrow           <plug>\twoheadrightarrow '
exe s:pA1a.'rightarrowtail              <plug>\rightarrowtail '
exe s:pA1a.'rightleftharpoons           <plug>\rightleftharpoons '
exe s:pA1a.'Rsh                         <plug>\Rsh '
exe s:pA1a.'looparrowright              <plug>\looparrowright '
exe s:pA1a.'curvearrowright             <plug>\curvearrowright '
exe s:pA1a.'circlearrowright            <plug>\circlearrowright '
exe s:pA1a.'multimap                    <plug>\multimap '
exe s:pA1a.'upuparrows                  <plug>\upuparrows '
exe s:pA1a.'downdownarrows              <plug>\downdownarrows '
exe s:pA1a.'upharpoonleft               <plug>\upharpoonleft '
exe s:pA1a.'upharpoonright              <plug>\upharpoonright '
exe s:pA1a.'downharpoonleft             <plug>\downharpoonleft '
exe s:pA1a.'downharpoonright            <plug>\downharpoonright '
exe s:pA1a.'rightsquigarrow             <plug>\rightsquigarrow '
exe s:pA1a.'leftrightsquigarrow         <plug>\leftrightsquigarrow '
" }}}
" MATH Fonts {{{
let s:pA2a = s:pA."&MathFonts."
exe s:pA2a.'mathbf{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathbf{<++>}<++>")<cr>'
exe s:pA2a.'mathrm{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathrm{<++>}<++>")<cr>'
exe s:pA2a.'mathsf{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathsf{<++>}<++>")<cr>'
exe s:pA2a.'mathtt{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathtt{<++>}<++>")<cr>'
exe s:pA2a.'mathit{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathit{<++>}<++>")<cr>'
exe s:pA2a.'mathfrak{}              <plug><C-r>=IMAP_PutTextWithMovement("\\mathfrak{<++>}<++>")<cr>'
exe s:pA2a.'mathcal{}               <plug><C-r>=IMAP_PutTextWithMovement("\\mathcal{<++>}<++>")<cr>'
exe s:pA2a.'mathscr{}               <plug><C-r>=IMAP_PutTextWithMovement("\\mathscr{<++>}<++>")<cr>'
exe s:pA2a.'mathbb{}                <plug><C-r>=IMAP_PutTextWithMovement("\\mathbb{<++>}<++>")<cr>'
" }}}
" Greek Letters small {{{
let s:pA2 = s:pA."&Greek.&Small."
exe s:pA2.'alpha<Tab>`a             <plug>\alpha '
exe s:pA2.'beta<Tab>`b              <plug>\beta '
exe s:pA2.'gamma<Tab>`g             <plug>\gamma '
exe s:pA2.'delta<Tab>`d             <plug>\delta '
exe s:pA2.'epsilon                  <plug>\epsilon '
exe s:pA2.'varepsilon<Tab>`e        <plug>\varepsilon '
exe s:pA2.'zeta<Tab>`z              <plug>\zeta '
exe s:pA2.'eta<Tab>`h               <plug>\eta '
exe s:pA2.'theta<Tab>`q             <plug>\theta '
exe s:pA2.'vartheta                 <plug>\vartheta '
exe s:pA2.'iota<Tab>`i              <plug>\iota '
exe s:pA2.'kappa<Tab>`k             <plug>\kappa '
exe s:pA2.'lambda<Tab>`l            <plug>\lambda '
exe s:pA2.'mu<Tab>`m                <plug>\mu '
exe s:pA2.'nu<Tab>`n                <plug>\nu '
exe s:pA2.'xi<Tab>`x                <plug>\xi '
exe s:pA2.'pi<Tab>`p                <plug>\pi '
exe s:pA2.'varpi                    <plug>\varpi '
exe s:pA2.'rho<Tab>`r               <plug>\rho '
exe s:pA2.'varrho                   <plug>\varrho '
exe s:pA2.'sigma<Tab>`s             <plug>\sigma '
exe s:pA2.'varsigma<Tab>`v          <plug>\varsigma '
exe s:pA2.'tau<Tab>`t               <plug>\tau '
exe s:pA2.'upsilon<Tab>`u           <plug>\upsilon '
exe s:pA2.'phi                      <plug>\phi '
exe s:pA2.'varphi<Tab>`f            <plug>\varphi '
exe s:pA2.'chi<Tab>`c               <plug>\chi '
exe s:pA2.'psi<Tab>`y               <plug>\psi '
exe s:pA2.'omega<Tab>`w             <plug>\omega '
" }}}
" Greek Letters big {{{
let s:pA3 = s:pA.'&Greek.&Big.' 
exe s:pA3.'Alpha<Tab>`A             <plug>\Alpha '
exe s:pA3.'Beta<Tab>`B              <plug>\Beta '
exe s:pA3.'Gamma<Tab>`G             <plug>\Gamma '
exe s:pA3.'Delta<Tab>`D             <plug>\Delta '
exe s:pA3.'Epsilon<Tab>`E           <plug>\Epsilon '
exe s:pA3.'Zeta<Tab>`Z              <plug>\mathrm{Z} '
exe s:pA3.'Eta<Tab>`H               <plug>\Eta '
exe s:pA3.'Theta                    <plug>\Theta '
exe s:pA3.'Iota                     <plug>\mathrm{I} '
exe s:pA3.'Kappa<Tab>`K             <plug>\Kappa '
exe s:pA3.'Lambda<Tab>`L            <plug>\Lambda '
exe s:pA3.'Mu<Tab>`M                <plug>\Mu '
exe s:pA3.'Nu<Tab>`N                <plug>\Nu '
exe s:pA3.'Xi<Tab>`X                <plug>\Xi '
exe s:pA3.'Pi<Tab>`P                <plug>\Pi '
exe s:pA3.'Rho<Tab>`R               <plug>\Rho '
exe s:pA3.'Sigma<Tab>`S             <plug>\Sigma '
exe s:pA3.'Tau<Tab>`T               <plug>\Tau '
exe s:pA3.'Upsilon<Tab>`U           <plug>\Upsilon '
exe s:pA3.'Phi                      <plug>\Phi '
exe s:pA3.'Chi<Tab>`C               <plug>\Chi '
exe s:pA3.'Psi<Tab>`Y               <plug>\Psi '
exe s:pA3.'Omega<Tab>`W             <plug>\Omega '
" }}}
" BinaryRel1 {{{
let s:pA4 = s:pA."&BinaryRel1."  
exe s:pA4.'ll                       <plug>\ll '
exe s:pA4.'lll                      <plug>\lll '
exe s:pA4.'leqslant                 <plug>\leqslant '
exe s:pA4.'leq                      <plug>\leq '
exe s:pA4.'leqq                     <plug>\leqq '
exe s:pA4.'eqslantless              <plug>\eqslantless '
exe s:pA4.'lessdot                  <plug>\lessdot '
exe s:pA4.'prec                     <plug>\prec '
exe s:pA4.'preceq                   <plug>\preceq '
exe s:pA4.'preccurlyeq              <plug>\preccurlyeq '
exe s:pA4.'curlyeqprec              <plug>\curlyeqprec '
exe s:pA4.'lesssim                   <plug>\lesssim '
exe s:pA4.'lessapprox               <plug>\lessapprox '
exe s:pA4.'precsim                  <plug>\precsim '
exe s:pA4.'precapprox               <plug>\precapprox '
exe s:pA4.'in                       <plug>\in '
exe s:pA4.'subset<Tab>`(            <plug>\subset '
exe s:pA4.'Subset<Tab>`)            <plug>\Subset '
exe s:pA4.'subseteq                 <plug>\subseteq '
exe s:pA4.'subseteqq                <plug>\subseteqq '
exe s:pA4.'sqsubset                 <plug>\sqsubset '
exe s:pA4.'sqsubseteq               <plug>\sqsubseteq '
exe s:pA4.'smile                    <plug>\smile '
exe s:pA4.'smallsmile               <plug>\smallsmile '
exe s:pA4.'parallel                 <plug>\parallel '
exe s:pA4.'shortparallel            <plug>\shortparallel '
exe s:pA4.'dashv                    <plug>\dashv '
exe s:pA4.'vdash                    <plug>\vdash '
exe s:pA4.'vDash                    <plug>\vDash '
exe s:pA4.'models                   <plug>\models '
exe s:pA4.'therefore                <plug>\therefore '
exe s:pA4.'backepsilon              <plug>\backepsilon '
" }}}
" nBinaryRel1 {{{ 
let s:pA4a = s:pA."&nBinaryRel1."  
exe s:pA4a.'nless                   <plug>\nless '
exe s:pA4a.'nleqslant               <plug>\nleqslant '
exe s:pA4a.'nleq                    <plug>\nleq '
exe s:pA4a.'lneq                    <plug>\lneq '
exe s:pA4a.'nleqq                   <plug>\nleqq '
exe s:pA4a.'lneqq                   <plug>\lneqq '
exe s:pA4a.'lvertneqq               <plug>\lvertneqq '
exe s:pA4a.'nprec                   <plug>\nprec '
exe s:pA4a.'npreceq                 <plug>\npreceq '
exe s:pA4a.'precneqq                <plug>\precneqq '
exe s:pA4a.'lnsim                   <plug>\lnsim '
exe s:pA4a.'lnapprox                <plug>\lnapprox '
exe s:pA4a.'precnsim                <plug>\precnsim '
exe s:pA4a.'precnapprox             <plug>\precnapprox '
exe s:pA4a.'notin                   <plug>\notin '
exe s:pA4a.'nsubseteq               <plug>\nsubseteq '
exe s:pA4a.'varsubsetneq            <plug>\varsubsetneq '
exe s:pA4a.'subsetneq               <plug>\subsetneq '
exe s:pA4a.'nsubseteqq              <plug>\nsubseteqq '
exe s:pA4a.'varsubsetneqq           <plug>\varsubsetneqq '
exe s:pA4a.'subsetneqq              <plug>\subsetneqq '
exe s:pA4a.'nparallel               <plug>\nparallel '
exe s:pA4a.'nshortparallel          <plug>\nshortparallel '
exe s:pA4a.'nvdash                  <plug>\nvdash '
exe s:pA4a.'nvDash                  <plug>\nvDash '
" }}}
" BinaryRel2 {{{ 
let s:pA5 = s:pA."&BinaryRel2."  
exe s:pA5.'gg                       <plug>\gg '
exe s:pA5.'ggg                      <plug>\ggg '
exe s:pA5.'gggtr                    <plug>\gggtr '
exe s:pA5.'geqslant                 <plug>\geqslant '
exe s:pA5.'geq                      <plug>\geq '
exe s:pA5.'geqq                     <plug>\geqq '
exe s:pA5.'eqslantgtr               <plug>\eqslantgtr '
exe s:pA5.'gtrdot                   <plug>\gtrdot '
exe s:pA5.'succ                     <plug>\succ '
exe s:pA5.'succeq                   <plug>\succeq '
exe s:pA5.'succcurlyeq              <plug>\succcurlyeq '
exe s:pA5.'curlyeqsucc              <plug>\curlyeqsucc '
exe s:pA5.'gtrsim                   <plug>\gtrsim '
exe s:pA5.'gtrapprox                <plug>\gtrapprox '
exe s:pA5.'succsim                  <plug>\succsim '
exe s:pA5.'succapprox               <plug>\succapprox '
exe s:pA5.'ni                       <plug>\ni '
exe s:pA5.'owns                     <plug>\owns '
exe s:pA5.'supset                   <plug>\supset '
exe s:pA5.'Supset                   <plug>\Supset '
exe s:pA5.'supseteq                 <plug>\supseteq '
exe s:pA5.'supseteqq                <plug>\supseteqq '
exe s:pA5.'sqsupset                 <plug>\sqsupset '
exe s:pA5.'sqsupseteq               <plug>\sqsupseteq '
exe s:pA5.'frown                    <plug>\frown '
exe s:pA5.'smallfrown               <plug>\smallfrown '
exe s:pA5.'mid                      <plug>\mid '
exe s:pA5.'shortmid                 <plug>\shortmid '
exe s:pA5.'between                  <plug>\between '
exe s:pA5.'Vdash                    <plug>\Vdash '
exe s:pA5.'bowtie                   <plug>\bowtie '
exe s:pA5.'Join                     <plug>\Join '
exe s:pA5.'pitchfork                <plug>\pitchfork '
" }}}
" {{{ nBinaryRel2
let s:pA5a = s:pA."n&BinaryRel2."  "TODO: dorobi? logarytmy
exe s:pA5a.'ngtr                    <plug>\ngtr '
exe s:pA5a.'ngeqslant               <plug>\ngeqslant '
exe s:pA5a.'ngeq                    <plug>\ngeq '
exe s:pA5a.'gneq                    <plug>\gneq '
exe s:pA5a.'ngeqq                   <plug>\ngeqq '
exe s:pA5a.'gneqq                   <plug>\gneqq '
exe s:pA5a.'nsucc                   <plug>\nsucc '
exe s:pA5a.'nsucceq                 <plug>\nsucceq '
exe s:pA5a.'succneqq                <plug>\succneqq '
exe s:pA5a.'gnsim                   <plug>\gnsim '
exe s:pA5a.'gnapprox                <plug>\gnapprox '
exe s:pA5a.'succnsim                <plug>\succnsim '
exe s:pA5a.'succnapprox             <plug>\succnapprox '
exe s:pA5a.'nsupseteq               <plug>\nsupseteq '
exe s:pA5a.'varsupsetneq            <plug>\varsupsetneq '
exe s:pA5a.'supsetneq               <plug>\supsetneq '
exe s:pA5a.'nsupseteqq              <plug>\nsupseteqq '
exe s:pA5a.'varsupsetneqq           <plug>\varsupsetneqq '
exe s:pA5a.'supsetneqq              <plug>\supsetneqq '
exe s:pA5a.'nmid                    <plug>\nmid '
exe s:pA5a.'nshortmid               <plug>\nshortmid '
exe s:pA5a.'nVdash                  <plug>\nVdash '
" }}}
" {{{ BinaryRel3
let s:pA6 = s:pA."&BinaryRel3."  
exe s:pA6.'doteq                    <plug>\doteq '
exe s:pA6.'circeq                   <plug>\circeq '
exe s:pA6.'eqcirc                   <plug>\eqcirc '
exe s:pA6.'risingdotseq             <plug>\risingdotseq '
exe s:pA6.'doteqdot                 <plug>\doteqdot '
exe s:pA6.'Doteq                    <plug>\Doteq '
exe s:pA6.'fallingdotseq            <plug>\fallingdotseq '
exe s:pA6.'triangleq                <plug>\triangleq '
exe s:pA6.'bumpeq                   <plug>\bumpeq '
exe s:pA6.'Bumpeq                   <plug>\Bumpeq '
exe s:pA6.'equiv<Tab>`=             <plug>\equiv '
exe s:pA6.'sim                      <plug>\sim '
exe s:pA6.'thicksim                 <plug>\thicksim '
exe s:pA6.'backsim                  <plug>\backsim '
exe s:pA6.'simeq                    <plug>\simeq '
exe s:pA6.'backsimeq                <plug>\backsimeq '
exe s:pA6.'cong                     <plug>\cong '
exe s:pA6.'approx<tab>=~            <plug>\approx '
exe s:pA6.'thickapprox              <plug>\thickapprox '
exe s:pA6.'approxeq                 <plug>\approxeq '
exe s:pA6.'blacktriangleleft        <plug>\blacktriangleleft '
exe s:pA6.'vartriangleleft          <plug>\vartriangleleft '
exe s:pA6.'trianglelefteq           <plug>\trianglelefteq '
exe s:pA6.'blacktriangleright       <plug>\blacktriangleright '
exe s:pA6.'vartriangleright         <plug>\vartriangleright '
exe s:pA6.'trianglerighteq          <plug>\trianglerighteq '
exe s:pA6.'perp                     <plug>\perp '
exe s:pA6.'asymp                    <plug>\asymp '
exe s:pA6.'Vvdash                   <plug>\Vvdash '
exe s:pA6.'propto                   <plug>\propto '
exe s:pA6.'varpropto                <plug>\varpropto '
exe s:pA6.'because                  <plug>\because '
" }}}
" {{{ nBinaryRel3
let s:pA6a = s:pA."&nBinaryRel3."
exe s:pA6a.'neq                     <plug>\neq '
exe s:pA6a.'nsim                    <plug>\nsim '
exe s:pA6a.'ncong                   <plug>\ncong '
exe s:pA6a.'ntriangleleft           <plug>\ntriangleleft '
exe s:pA6a.'ntrianglelefteq         <plug>\ntrianglelefteq '
exe s:pA6a.'ntriangleright          <plug>\ntriangleright '
exe s:pA6a.'ntrianglerighteq        <plug>\ntrianglerighteq '
" }}}
" {{{ BinaryRel4
let s:pA7 = s:pA."&BinaryRel4."  
exe s:pA7.'lessgtr                  <plug>\lessgtr '
exe s:pA7.'gtrless                  <plug>\gtrless '
exe s:pA7.'lesseqgtr                <plug>\lesseqgtr '
exe s:pA7.'gtreqless                <plug>\gtreqless '
exe s:pA7.'lesseqqgtr               <plug>\lesseqqgtr '
exe s:pA7.'gtreqqless               <plug>\gtreqqless '
" }}}
" {{{ BigOp
let s:pA8a = s:pA."&BigOp."
exe s:pA8a.'limits                  <plug>\limits'
exe s:pA8a.'nolimits                <plug>\nolimits'
exe s:pA8a.'displaylimits           <plug>\displaylimits'
exe s:pA8a.'-seplimits- :'
exe s:pA8a.'bigcap<Tab>`-           <plug>\bigcap'
exe s:pA8a.'bigcup<Tab>`+           <plug>\bigcup'
exe s:pA8a.'bigodot                 <plug>\bigodot'
exe s:pA8a.'bigoplus                <plug>\bigoplus'
exe s:pA8a.'bigotimes               <plug>\bigotimes'
exe s:pA8a.'bigsqcup                <plug>\bigsqcup'
exe s:pA8a.'biguplus                <plug>\biguplus'
exe s:pA8a.'bigvee                  <plug>\bigvee'
exe s:pA8a.'bigwedge                <plug>\bigwedge'
exe s:pA8a.'coprod                  <plug>\coprod'
exe s:pA8a.'int                     <plug>\int'
exe s:pA8a.'oint                    <plug>\oint'
exe s:pA8a.'prod                    <plug>\prod'
exe s:pA8a.'sum                     <plug>\sum'
" }}}
" {{{ BinaryOp
let s:pA8 = s:pA."&BinaryOp."
exe s:pA8.'pm                       <plug>\pm '
exe s:pA8.'mp                       <plug>\mp '
exe s:pA8.'dotplus                  <plug>\dotplus '
exe s:pA8.'cdot<Tab>`.              <plug>\cdot '
exe s:pA8.'centerdot                <plug>\centerdot '
exe s:pA8.'times<Tab>`*             <plug>\times '
exe s:pA8.'ltimes                   <plug>\ltimes '
exe s:pA8.'rtimes                   <plug>\rtimes '
exe s:pA8.'leftthreetimes           <plug>\leftthreetimes '
exe s:pA8.'rightthreetimes          <plug>\rightthreetimes '
exe s:pA8.'div                      <plug>\div '
exe s:pA8.'divideontimes            <plug>\divideontimes '
exe s:pA8.'bmod                     <plug>\bmod '
exe s:pA8.'ast                      <plug>\ast '
exe s:pA8.'star                     <plug>\star '
exe s:pA8.'setminus<Tab>`\\         <plug>\setminus '
exe s:pA8.'smallsetminus            <plug>\smallsetminus '
exe s:pA8.'diamond                  <plug>\diamond '
exe s:pA8.'wr                       <plug>\wr '
exe s:pA8.'intercal                 <plug>\intercal '
exe s:pA8.'circ<Tab>`@              <plug>\circ '
exe s:pA8.'bigcirc                  <plug>\bigcirc '
exe s:pA8.'bullet                   <plug>\bullet '
exe s:pA8.'cap                      <plug>\cap '
exe s:pA8.'Cap                      <plug>\Cap '
exe s:pA8.'cup                      <plug>\cup '
exe s:pA8.'Cup                      <plug>\Cup '
exe s:pA8.'sqcap                    <plug>\sqcap '
exe s:pA8.'sqcup                    <plug>\sqcup'
exe s:pA8.'amalg                    <plug>\amalg '
exe s:pA8.'uplus                    <plug>\uplus '
exe s:pA8.'triangleleft             <plug>\triangleleft '
exe s:pA8.'triangleright            <plug>\triangleright '
exe s:pA8.'bigtriangleup            <plug>\bigtriangleup '
exe s:pA8.'bigtriangledown          <plug>\bigtriangledown '
exe s:pA8.'vee                      <plug>\vee '
exe s:pA8.'veebar                   <plug>\veebar '
exe s:pA8.'curlyvee                 <plug>\curlyvee '
exe s:pA8.'wedge<Tab>`&             <plug>\wedge '
exe s:pA8.'barwedge                 <plug>\barwedge '
exe s:pA8.'doublebarwedge           <plug>\doublebarwedge '
exe s:pA8.'curlywedge               <plug>\curlywedge '
exe s:pA8.'oplus                    <plug>\oplus '
exe s:pA8.'ominus                   <plug>\ominus '
exe s:pA8.'otimes                   <plug>\otimes '
exe s:pA8.'oslash                   <plug>\oslash '
exe s:pA8.'boxplus                  <plug>\boxplus '
exe s:pA8.'boxminus                 <plug>\boxminus '
exe s:pA8.'boxtimes                 <plug>\boxtimes '
exe s:pA8.'boxdot                   <plug>\boxdot '
exe s:pA8.'odot                     <plug>\odot '
exe s:pA8.'circledast               <plug>\circledast '
exe s:pA8.'circleddash              <plug>\circleddash '
exe s:pA8.'circledcirc              <plug>\circledcirc '
exe s:pA8.'dagger                   <plug>\dagger '
exe s:pA8.'ddagger                  <plug>\ddagger '
exe s:pA8.'lhd                      <plug>\lhd '
exe s:pA8.'unlhd                    <plug>\unlhd '
exe s:pA8.'rhd                      <plug>\rhd '
exe s:pA8.'unrhd                    <plug>\unrhd '
" }}}
" {{{ Other1
let s:pA9 = s:pA."&Other1."
exe s:pA9.'hat                      <plug>\hat '
exe s:pA9.'check                    <plug>\check '
exe s:pA9.'grave                    <plug>\grave '
exe s:pA9.'acute                    <plug>\acute '
exe s:pA9.'dot                      <plug>\dot '
exe s:pA9.'ddot                     <plug>\ddot '
exe s:pA9.'tilde<Tab>`,             <plug>\tilde '
exe s:pA9.'breve                    <plug>\breve '
exe s:pA9.'bar                      <plug>\bar '
exe s:pA9.'vec                      <plug>\vec '
exe s:pA9.'aleph                    <plug>\aleph '
exe s:pA9.'hbar                     <plug>\hbar '
exe s:pA9.'imath                    <plug>\imath '
exe s:pA9.'jmath                    <plug>\jmath '
exe s:pA9.'ell                      <plug>\ell '
exe s:pA9.'wp                       <plug>\wp '
exe s:pA9.'Re                       <plug>\Re '
exe s:pA9.'Im                       <plug>\Im '
exe s:pA9.'partial                  <plug>\partial '
exe s:pA9.'infty<Tab>`8             <plug>\infty '
exe s:pA9.'prime                    <plug>\prime '
exe s:pA9.'emptyset                 <plug>\emptyset '
exe s:pA9.'nabla                    <plug>\nabla '
exe s:pA9.'surd                     <plug>\surd '
exe s:pA9.'top                      <plug>\top '
exe s:pA9.'bot                      <plug>\bot '
exe s:pA9.'angle                    <plug>\angle '
exe s:pA9.'triangle                 <plug>\triangle '
exe s:pA9.'backslash                <plug>\backslash '
exe s:pA9.'forall                   <plug>\forall '
exe s:pA9.'exists                   <plug>\exists '
exe s:pA9.'neg                      <plug>\neg '
exe s:pA9.'flat                     <plug>\flat '
exe s:pA9.'natural                  <plug>\natural '
exe s:pA9.'sharp                    <plug>\sharp '
exe s:pA9.'clubsuit                 <plug>\clubsuit '
exe s:pA9.'diamondsuit              <plug>\diamondsuit '
exe s:pA9.'heartsuit                <plug>\heartsuit '
exe s:pA9.'spadesuit                <plug>\spadesuit '
exe s:pA9.'S                        <plug>\S '
exe s:pA9.'P                        <plug>\P'
" }}}
" {{{ MathCreating
let s:pA10 = s:pA."&MathCreating."
exe s:pA10.'not                     <plug>\not'
exe s:pA10.'mkern                   <plug>\mkern'
exe s:pA10.'mathbin                 <plug>\mathbin'
exe s:pA10.'mathrel                 <plug>\mathrel'
exe s:pA10.'stackrel                <plug>\stackrel'
exe s:pA10.'mathord                 <plug>\mathord'
" }}}
" {{{ Styles
let s:pA11 = s:pA."&Styles."
exe s:pA11.'displaystyle            <plug>\displaystyle'
exe s:pA11.'textstyle               <plug>\textstyle'
exe s:pA11.'scritpstyle             <plug>\scritpstyle'
exe s:pA11.'scriptscriptstyle       <plug>\scriptscriptstyle'
" }}}
" {{{ MathDiacritics
let s:pA12 = s:pA."&MathDiacritics."
exe s:pA12.'acute{}                 <plug><C-r>=IMAP_PutTextWithMovement("\\acute{<++>}<++>")<cr>'
exe s:pA12.'bar{}<Tab>`_            <plug><C-r>=IMAP_PutTextWithMovement("\\bar{<++>}<++>")<cr>'
exe s:pA12.'breve{}                 <plug><C-r>=IMAP_PutTextWithMovement("\\breve{<++>}<++>")<cr>'
exe s:pA12.'check{}                 <plug><C-r>=IMAP_PutTextWithMovement("\\check{<++>}<++>")<cr>'
exe s:pA12.'ddot{}<Tab>`:           <plug><C-r>=IMAP_PutTextWithMovement("\\ddot{<++>}<++>")<cr>'
exe s:pA12.'dot{}<Tab>`;            <plug><C-r>=IMAP_PutTextWithMovement("\\dot{<++>}<++>")<cr>'
exe s:pA12.'grave{}                 <plug><C-r>=IMAP_PutTextWithMovement("\\grave{<++>}<++>")<cr>'
exe s:pA12.'hat{}<Tab>`^            <plug><C-r>=IMAP_PutTextWithMovement("\\hat{<++>}<++>")<cr>'
exe s:pA12.'tilde{}<tab>`~          <plug><C-r>=IMAP_PutTextWithMovement("\\tilde{<++>}<++>")<cr>'
exe s:pA12.'vec{}                   <plug><C-r>=IMAP_PutTextWithMovement("\\vec{<++>}<++>")<cr>'
exe s:pA12.'widehat{}               <plug><C-r>=IMAP_PutTextWithMovement("\\widehat{<++>}<++>")<cr>'
exe s:pA12.'widetilde{}             <plug><C-r>=IMAP_PutTextWithMovement("\\widetilde{<++>}<++>")<cr>'
exe s:pA12.'imath                   <plug><C-r>=IMAP_PutTextWithMovement("\\imath")<cr>'
exe s:pA12.'jmath                   <plug><C-r>=IMAP_PutTextWithMovement("\\jmath")<cr>'
" }}}
" {{{ OverlineAndCo
let s:pA13 = s:pA."&OverlineAndCo."
exe s:pA13.'overline{}              <plug><C-r>=IMAP_PutTextWithMovement("\\overline{}")<cr>'
exe s:pA13.'underline{}             <plug><C-r>=IMAP_PutTextWithMovement("\\underline{}")<cr>'
exe s:pA13.'overrightarrow{}        <plug><C-r>=IMAP_PutTextWithMovement("\\overrightarrow{}")<cr>'
exe s:pA13.'overleftarrow{}         <plug><C-r>=IMAP_PutTextWithMovement("\\overleftarrow{}")<cr>'
exe s:pA13.'overbrace{}             <plug><C-r>=IMAP_PutTextWithMovement("\\overbrace{}")<cr>'
exe s:pA13.'underbrace{}            <plug><C-r>=IMAP_PutTextWithMovement("\\underbrace{}")<cr>'
" }}}
" {{{ Symbols1
let s:pA14a = s:pA."&Symbols1."
exe s:pA14a.'forall                 <plug>\forall '
exe s:pA14a.'exists                 <plug>\exists '
exe s:pA14a.'nexists                <plug>\nexists '
exe s:pA14a.'neg                    <plug>\neg '
exe s:pA14a.'top                    <plug>\top '
exe s:pA14a.'bot                    <plug>\bot '
exe s:pA14a.'emptyset               <plug>\emptyset '
exe s:pA14a.'varnothing             <plug>\varnothing '
exe s:pA14a.'infty                  <plug>\infty '
exe s:pA14a.'aleph                  <plug>\aleph '
exe s:pA14a.'beth                   <plug>\beth '
exe s:pA14a.'gimel                  <plug>\gimel '
exe s:pA14a.'daleth                 <plug>\daleth '
exe s:pA14a.'hbar                   <plug>\hbar '
exe s:pA14a.'hslash                 <plug>\hslash '
exe s:pA14a.'diagup                 <plug>\diagup '
exe s:pA14a.'vert                   <plug>\vert '
exe s:pA14a.'Vert                   <plug>\Vert '
exe s:pA14a.'backslash              <plug>\backslash '
exe s:pA14a.'diagdown               <plug>\diagdown '
exe s:pA14a.'Bbbk                   <plug>\Bbbk '
exe s:pA14a.'P                      <plug>\P '
exe s:pA14a.'S                      <plug>\S '
" }}}
" {{{ Symbols2
let s:pA14b = s:pA."&Symbols2."
exe s:pA14b.'#                      <plug>\# '
exe s:pA14b.'%                      <plug>\% '
exe s:pA14b.'_                      <plug>\_ '
exe s:pA14b.'$                      <plug>\$ '
exe s:pA14b.'&                      <plug>\& '
exe s:pA14b.'imath                  <plug>\imath '
exe s:pA14b.'jmath                  <plug>\jmath '
exe s:pA14b.'ell                    <plug>\ell '
exe s:pA14b.'wp                     <plug>\wp '
exe s:pA14b.'Re                     <plug>\Re '
exe s:pA14b.'Im                     <plug>\Im '
exe s:pA14b.'prime                  <plug>\prime '
exe s:pA14b.'backprime              <plug>\backprime '
exe s:pA14b.'nabla                  <plug>\nabla '
exe s:pA14b.'surd                   <plug>\surd '
exe s:pA14b.'flat                   <plug>\flat '
exe s:pA14b.'sharp                  <plug>\sharp '
exe s:pA14b.'natural                <plug>\natural '
exe s:pA14b.'eth                    <plug>\eth '
exe s:pA14b.'bigstar                <plug>\bigstar '
exe s:pA14b.'circledS               <plug>\circledS '
exe s:pA14b.'Finv                   <plug>\Finv '
exe s:pA14b.'dag                    <plug>\dag '
exe s:pA14b.'ddag                   <plug>\ddag '
" }}}
" {{{ Symbols3
let s:pA14c = s:pA."&Symbols3."
exe s:pA14c.'angle                  <plug>\angle '
exe s:pA14c.'measuredangle          <plug>\measuredangle '
exe s:pA14c.'sphericalangle         <plug>\sphericalangle '
exe s:pA14c.'spadesuit              <plug>\spadesuit '
exe s:pA14c.'heartsuit              <plug>\heartsuit '
exe s:pA14c.'diamondsuit            <plug>\diamondsuit '
exe s:pA14c.'clubsuit               <plug>\clubsuit '
exe s:pA14c.'lozenge                <plug>\lozenge '
exe s:pA14c.'blacklozenge           <plug>\blacklozenge '
exe s:pA14c.'Diamond                <plug>\Diamond '
exe s:pA14c.'triangle               <plug>\triangle '
exe s:pA14c.'vartriangle            <plug>\vartriangle '
exe s:pA14c.'blacktriangle          <plug>\blacktriangle '
exe s:pA14c.'triangledown           <plug>\triangledown '
exe s:pA14c.'blacktriangledown      <plug>\blacktriangledown '
exe s:pA14c.'Box                    <plug>\Box '
exe s:pA14c.'square                 <plug>\square '
exe s:pA14c.'blacksquare            <plug>\blacksquare '
exe s:pA14c.'complement             <plug>\complement '
exe s:pA14c.'mho                    <plug>\mho '
exe s:pA14c.'Game                   <plug>\Game '
exe s:pA14c.'partial<Tab>`6         <plug>\partial '
exe s:pA14c.'smallint               <plug>\smallint '
" }}}
" {{{ Logic
let s:pA15 = s:pA."&Logic."
exe s:pA15.'lnot                    <plug>\lnot '
exe s:pA15.'lor                     <plug>\lor '
exe s:pA15.'land                    <plug>\land '
" }}}
" {{{ Limits1
let s:pA16 = s:pA."&Limits1."
exe s:pA16.'left                    <plug>\left'
exe s:pA16.'right                   <plug>\right'
exe s:pA16.'-sepbigl- :'
exe s:pA16.'bigl                    <plug>\bigl'
exe s:pA16.'Bigl                    <plug>\Bigl'
exe s:pA16.'biggl                   <plug>\biggl'
exe s:pA16.'Biggl                   <plug>\Biggl'
exe s:pA16.'-sepbigr- :'
exe s:pA16.'bigr                    <plug>\bigr'
exe s:pA16.'Bigr                    <plug>\Bigr'
exe s:pA16.'biggr                   <plug>\biggr'
exe s:pA16.'Biggr                   <plug>\Biggr'
exe s:pA16.'-sepbig- :'
exe s:pA16.'big                     <plug>\big'
exe s:pA16.'bigm                    <plug>\bigm'
exe s:pA16.'-sepfloor- :'
exe s:pA16.'lfloor                  <plug>\lfloor '
exe s:pA16.'lceil                   <plug>\lceil '
exe s:pA16.'rfloor                  <plug>\rfloor '
exe s:pA16.'rceil                   <plug>\rceil '
exe s:pA16.'-sepangle- :'
exe s:pA16.'langle                  <plug>\langle '
exe s:pA16.'rangle                  <plug>\rangle '
" }}}
" {{{ Limits2
let s:pA16a = s:pA."&Limits2."
exe s:pA16a.'ulcorner               <plug>\ulcorner '
exe s:pA16a.'urcorner               <plug>\urcorner '
exe s:pA16a.'llcorner               <plug>\llcorner '
exe s:pA16a.'rlcorner               <plug>\rlcorner '
exe s:pA16a.'-sepcorner- :'
exe s:pA16a.'vert                   <plug>\vert '
exe s:pA16a.'Vert                   <plug>\Vert '
exe s:pA16a.'lvert                  <plug>\lvert '
exe s:pA16a.'lVert                  <plug>\lVert '
exe s:pA16a.'rvert                  <plug>\rvert '
exe s:pA16a.'rVert                  <plug>\rVert '
exe s:pA16a.'uparrow                <plug>\uparrow '
exe s:pA16a.'Uparrow                <plug>\Uparrow '
exe s:pA16a.'downarrow              <plug>\downarrow '
exe s:pA16a.'Downarrow              <plug>\Downarrow '
exe s:pA16a.'updownarrow            <plug>\updownarrow '
exe s:pA16a.'Updownarrow            <plug>\Updownarrow '
exe s:pA16a.'lgroup                 <plug>\lgroup '
exe s:pA16a.'rgroup                 <plug>\rgroup '
exe s:pA16a.'lmoustache             <plug>\lmoustache '
exe s:pA16a.'rmoustache             <plug>\rmoustache '
exe s:pA16a.'arrowvert              <plug>\arrowvert '
exe s:pA16a.'Arrowvert              <plug>\Arrowvert '
exe s:pA16a.'bracevert              <plug>\bracevert '
" }}}
" {{{ Log-likes
let s:pA17 = s:pA."Lo&g-likes."
exe s:pA17.'arccos                  <plug>\arccos '
exe s:pA17.'arcsin                  <plug>\arcsin '
exe s:pA17.'arctan                  <plug>\arctan '
exe s:pA17.'arg                     <plug>\arg '
exe s:pA17.'cos                     <plug>\cos '
exe s:pA17.'cosh                    <plug>\cosh '
exe s:pA17.'cot                     <plug>\cot '
exe s:pA17.'coth                    <plug>\coth '
exe s:pA17.'csc                     <plug>\csc '
exe s:pA17.'deg                     <plug>\deg '
exe s:pA17.'det                     <plug>\det '
exe s:pA17.'dim                     <plug>\dim '
exe s:pA17.'exp                     <plug>\exp '
exe s:pA17.'gcd                     <plug>\gcd '
exe s:pA17.'hom                     <plug>\hom '
exe s:pA17.'inf                     <plug>\inf '
exe s:pA17.'injlim                  <plug>\injlim '
exe s:pA17.'ker                     <plug>\ker '
exe s:pA17.'lg                      <plug>\lg '
exe s:pA17.'lim                     <plug>\lim '
exe s:pA17.'liminf                  <plug>\liminf '
exe s:pA17.'limsup                  <plug>\limsup '
exe s:pA17.'ln                      <plug>\ln '
exe s:pA17.'log                     <plug>\log '
exe s:pA17.'max                     <plug>\max '
exe s:pA17.'min                     <plug>\min '
exe s:pA17.'Pr                      <plug>\Pr '
exe s:pA17.'projlim                 <plug>\projlim '
exe s:pA17.'sec                     <plug>\sec '
exe s:pA17.'sin                     <plug>\sin '
exe s:pA17.'sinh                    <plug>\sinh '
exe s:pA17.'sup                     <plug>\sup '
exe s:pA17.'tan                     <plug>\tan '
exe s:pA17.'tanh                    <plug>\tanh '
exe s:pA17.'varlimsup               <plug>\varlimsup '
exe s:pA17.'varliminf               <plug>\varliminf '
exe s:pA17.'varinjlim               <plug>\varinjlim '
exe s:pA17.'varprojlim              <plug>\varprojlim '
" }}}
" {{{ MathSpacing
let s:pA18 = s:pA."MathSpacing."
exe s:pA18.',                       <plug>\, '
exe s:pA18.':                       <plug>\: '
exe s:pA18.';                       <plug>\; '
exe s:pA18.'[space]                 <plug>\  '
exe s:pA18.'quad                    <plug>\quad '
exe s:pA18.'qquad                   <plug>\qquad '
exe s:pA18.'!                       <plug>\! '
exe s:pA18.'thinspace               <plug>\thinspace '
exe s:pA18.'medspace                <plug>\medspace '
exe s:pA18.'thickspace              <plug>\thickspace '
exe s:pA18.'negthinspace            <plug>\negthinspace '
exe s:pA18.'negmedspace             <plug>\negmedspace '
exe s:pA18.'negthickspace           <plug>\negthickspace '
" 1}}}

" vim:fdm=marker:ff=unix:noet:ts=4:sw=4
