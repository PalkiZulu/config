syntax on
imap <F2> :r !date +[\%T]o
map <F2> :r !date +[\%T]
map <F8> :new<CR>:read !cg-diff<CR>:set syntax=diff buftype=nofile<CR>gg
map <F9> :make 
map <F10> :cn! <C-M>
map <F11> :cp! <C-M>
map ,cu mX:s,/[*] \(.*\) [*]/,\1,<C-M>:nohls<C-M>
map ,cc :s,.*,/* & */,<C-M>:nohls<C-M>

filetype plugin indent on
"autocmd FileType python compiler pylint

autocmd BufRead,BufNewFile *.txt,README,TODO,CHANGELOG,NOTES
        \ setlocal autoindent expandtab tabstop=8 softtabstop=2 shiftwidth=2 filetype=asciidoc
        \ textwidth=70 wrap formatoptions=tcqn
        \ formatlistpat=^\\s*\\d\\+\\.\\s\\+\\\\|^\\s*<\\d\\+>\\s\\+\\\\|^\\s*[a-zA-Z.]\\.\\s\\+\\\\|^\\s*[ivxIVX]\\+\\.\\s\\+
        \ comments=s1:/*,ex:*/,://,b:#,:%,:XCOMM,fb:-,fb:*,fb:+,fb:.,fb:>

set bg=dark

" switched myself to gnu indentation (flames>/dev/null :P)
function! GnuIndent()
  setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
  setlocal shiftwidth=2
  setlocal tabstop=8
endfunction
au FileType c,cpp call GnuIndent() 
