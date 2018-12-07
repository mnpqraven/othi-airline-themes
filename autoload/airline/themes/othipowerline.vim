" Theme to mimic the default colorscheme of powerline
" Not 100% the same so it's powerline... ish.
"
" Differences from default powerline:
" * Paste indicator isn't colored different
" * Far right hand section matches the color of the mode indicator
"
" Differences from other airline themes:
" * No color differences when you're in a modified buffer
" * Visual mode only changes the mode section. Otherwise
"   it appears the same as normal mode

" 1 corner segments
" 2 branch and filetype
" 3 middle bar
" Normal mode                                    " fg             & bg
let s:N1 = [ '#005f00' , '#afd700' , 22  , 148 ] " darkestgreen   & brightgreen
let s:N2 = [ '#9e9e9e' , '#303030' , 247 , 236 ] " gray8          & gray2
let s:N3 = [ '#ffffff' , '#121212' , 231 , 238 ] " white          & gray4

" Insert mode                                    " fg             & bg
let s:I1 = [ '#005f5f' , '#ffffff' , 124 , 231 ] " mediumred      & white
let s:I2 = [ '#5fafd7' , '#0087af' , 247 , 88  ] " gray8          & darkred
let s:I3 = [ '#87d7ff' , '#005f87' , 247 , 52  ] " gray8          & darkestred

" Visual mode                                    " fg             & bg
let s:V1 = [ '#080808' , '#ffaf00' , 232 , 214 ] " gray 232       & brightestorange
let s:V2 = [ '#9e9e9e' , '#303030' , 232 , 172 ] " gray8          & gray2
let s:V3 = [ '#080808' , '#ffaf00' , 232 , 94  ] " white          & darkorange

" Replace mode                                   " fg             & bg
let s:RE = [ '#ffffff' , '#d70000' , 231 , 160 ] " white          & brightred

let g:airline#themes#othipowerline#palette = {}

let g:airline#themes#othipowerline#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
"let g:airline#themes#othipowerline#palette.normal_modified = airline#themes#generate_color_map(s:N1, s:N2, s:I3)
let g:airline#themes#othipowerline#palette.normal_modified = {
      \ 'airline_z': [ s:V1[0]   , s:V1[1]   , s:V1[2]   , s:V1[3]   , ''     ] }

let g:airline#themes#othipowerline#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#othipowerline#palette.insert_replace = {
      \ 'airline_a': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ],
      \ 'airline_z': [ s:RE[0]   , s:I1[1]   , s:RE[1]   , s:I1[3]   , ''     ] }

let g:airline#themes#othipowerline#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let g:airline#themes#othipowerline#palette.replace = copy(airline#themes#othipowerline#palette.normal)

let g:airline#themes#othipowerline#palette.replace = {
      \ 'airline_a': [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ],
      \ 'airline_c': [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ],
      \ 'airline_z': [ s:RE[0] , s:RE[1] , s:RE[2] , s:RE[3] , '' ] }

let s:IA = [ s:N2[0] , s:N3[1] , s:N2[2] , s:N3[3] , '' ]
let g:airline#themes#othipowerline#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

