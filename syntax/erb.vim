" Vim syntax file
" Language:		erb
" Maintainer:		Tim Pope <vimNOSPAM@tpope.org>
" URL:			http://vim-ruby.rubyforge.org
" Anon CVS:		See above site
" Release Coordinator:	Doug Kearns <dougkearns@gmail.com>

if exists("b:current_syntax")
  finish
endif

if !exists("main_syntax")
  let main_syntax = 'erb'
endif

if !exists("g:erb_default_subtype")
  let g:erb_default_subtype = "html"
endif

if !exists("b:erb_subtype") && main_syntax == 'erb'
  let s:lines = getline(1)."\n".getline(2)."\n".getline(3)."\n".getline(4)."\n".getline(5)."\n".getline("$")
  let b:erb_subtype = matchstr(s:lines,'erb_subtype=\zs\w\+')
  if b:erb_subtype == ''
    let b:erb_subtype = matchstr(&filetype,'^erb\.\zs\w\+')
  endif
  if b:erb_subtype == ''
    let b:erb_subtype = matchstr(substitute(expand("%:t"),'\c\%(\.erb\|\.erb\|\.erubis\)\+$','',''),'\.\zs\w\+$')
  endif
  if b:erb_subtype == 'rhtml'
    let b:erb_subtype = 'html'
  elseif b:erb_subtype == 'rb'
    let b:erb_subtype = 'ruby'
  elseif b:erb_subtype == 'yml'
    let b:erb_subtype = 'yaml'
  elseif b:erb_subtype == 'js'
    let b:erb_subtype = 'javascript'
  elseif b:erb_subtype == 'txt'
    " Conventional; not a real file type
    let b:erb_subtype = 'text'
  elseif b:erb_subtype == ''
    let b:erb_subtype = g:erb_default_subtype
  endif
endif

if !exists("b:erb_nest_level")
  let b:erb_nest_level = strlen(substitute(substitute(substitute(expand("%:t"),'@','','g'),'\c\.\%(erb\|rhtml\)\>','@','g'),'[^@]','','g'))
endif
if !b:erb_nest_level
  let b:erb_nest_level = 1
endif

if exists("b:erb_subtype") && b:erb_subtype != ''
  exe "runtime! syntax/".b:erb_subtype.".vim"
  unlet! b:current_syntax
endif
syn include @rubyTop syntax/ruby.vim

syn cluster erbRegions contains=erbOneLiner,erbBlock,erbExpression,erbComment

exe 'syn region  erbOneLiner   matchgroup=erbDelimiter start="^%\{1,'.b:erb_nest_level.'\}%\@!"    end="$"     contains=@rubyTop	     containedin=ALLBUT,@erbRegions keepend oneline'
exe 'syn region  erbBlock      matchgroup=erbDelimiter start="<%\{1,'.b:erb_nest_level.'\}%\@!-\=" end="[=-]\=%\@<!%\{1,'.b:erb_nest_level.'\}>" contains=@rubyTop  containedin=ALLBUT,@erbRegions keepend'
exe 'syn region  erbExpression matchgroup=erbDelimiter start="<%\{1,'.b:erb_nest_level.'\}=\{1,4}" end="[=-]\=%\@<!%\{1,'.b:erb_nest_level.'\}>" contains=@rubyTop  containedin=ALLBUT,@erbRegions keepend'
exe 'syn region  erbComment    matchgroup=erbDelimiter start="<%\{1,'.b:erb_nest_level.'\}#"       end="%\@<!%\{1,'.b:erb_nest_level.'\}>" contains=rubyTodo,@Spell containedin=ALLBUT,@erbRegions keepend'

" Define the default highlighting.

hi def link erbDelimiter		PreProc
hi def link erbComment		Comment

let b:current_syntax = 'erb'

if main_syntax == 'erb'
  unlet main_syntax
endif

" vim: nowrap sw=2 sts=2 ts=8:
