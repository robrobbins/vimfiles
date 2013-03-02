" File:         javascriptLint.vim
" Author:       Joe Stelmach (joe@zenbe.com)
" Version:      0.1
" Description:  javascriptLint.vim allows the JavaScript Lint (jsl) program 
"               from http://www.javascriptlint.com/ to be tightly integrated 
"               with vim.  The contents of a javascript file will be passed 
"               through the jsl program after the file's buffer is saved.  
"               Any lint warnings will be placed in the quickfix window.  
"               JavaScript Lint must be installed on your system for this 
"               plugin to work properly.  This page should get you started:
"               http://www.javascriptlint.com/docs/index.htm
" Last Modified: May 5, 2009

if !exists("jslint_command")
  let jslint_command = 'jsl'
endif

if !exists("jslint_command_options")
  let jslint_command_options = '-conf /usr/local/bin/jsl.conf -nofilelisting -nocontext -nosummary -nologo -process'
endif

" set up auto commands
autocmd BufWritePost,FileWritePost *.js call JavascriptLint()

" Runs the current file through javascript lint and 
" opens a quickfix window with any warnings
function JavascriptLint() 
  " run javascript lint on the current file
  let current_file = shellescape(expand('%:p'))
  let cmd_output = system(g:jslint_command . ' ' . g:jslint_command_options . ' ' . current_file)

  " if some warnings were found, we process them
  if strlen(cmd_output) > 0

    " ensure proper error format
    let s:errorformat = "%f(%l):\%m^M"

    " write quickfix errors to a temp file 
    let quickfix_tmpfile_name = tempname()
    exe "redir! > " . quickfix_tmpfile_name
      silent echon cmd_output
    redir END

    " read in the errors temp file 
    execute "silent! cfile " . quickfix_tmpfile_name


    " open the quicfix window
    botright copen
    let s:qfix_buffer = bufnr("$")

    " delete the temp file
    call delete(quickfix_tmpfile_name)

  " if no javascript warnings are found, we close the quick fix window
  else 
    if(exists("s:qfix_buffer"))
      cclose
      unlet s:qfix_buffer
    endif
  endif
endfunction


