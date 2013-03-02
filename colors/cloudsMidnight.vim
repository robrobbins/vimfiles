" Vim color file
" Converted from Textmate theme Clouds Midnight using Coloration v0.2.4 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Clouds Midnight"

hi Cursor           guifg=#191919 guibg=#7da5dc gui=NONE
hi Visual           guifg=#7da5dc guibg=#303030 gui=NONE
hi CursorLine       guifg=NONE    guibg=#1f1f1f gui=NONE
hi CursorColumn     guifg=NONE    guibg=#1f1f1f gui=NONE
hi ColorColumn      guifg=NONE    guibg=#1f1f1f gui=NONE
hi LineNr           guifg=#565656 guibg=#191919 gui=NONE
hi VertSplit        guifg=#303030 guibg=#303030 gui=NONE
hi MatchParen       guifg=#a165ac guibg=NONE    gui=NONE
hi StatusLine       guifg=#929292 guibg=#303030 gui=bold
hi StatusLineNC     guifg=#929292 guibg=#303030 gui=NONE
hi Pmenu            guifg=NONE    guibg=#303030 gui=NONE
hi PmenuSel         guifg=#7da5dc guibg=#565656 gui=bold
hi PmenuSbar        guifg=#565656 guibg=#191919 gui=NONE
hi PmenuThumb       guifg=#191919 guibg=#565656 gui=NONE
hi IncSearch        guifg=NONE    guibg=#413a2f gui=NONE
hi Search           guifg=NONE    guibg=#413a2f gui=NONE
hi Directory        guifg=#927c5d guibg=NONE    gui=NONE
hi Folded           guifg=#3c403b guibg=#191919 gui=NONE

hi Normal           guifg=#929292 guibg=#191919 gui=NONE
hi Boolean          guifg=#39946a guibg=NONE    gui=NONE
hi Character        guifg=NONE    guibg=NONE    gui=NONE
hi Comment          guifg=#3c403b guibg=NONE    gui=NONE
hi Conditional      guifg=#927c5d guibg=NONE    gui=NONE
hi Constant         guifg=NONE    guibg=NONE    gui=bold
hi Define           guifg=#a165ac guibg=NONE    gui=NONE
hi ErrorMsg         guifg=#ffffff guibg=#e92e2e gui=NONE
hi WarningMsg       guifg=#ffffff guibg=#e92e2e gui=NONE
hi Float            guifg=#46a609 guibg=NONE    gui=NONE
hi Function         guifg=NONE    guibg=NONE    gui=NONE
hi Identifier       guifg=#927c5d guibg=NONE    gui=NONE
hi Keyword          guifg=#927c5d guibg=NONE    gui=bold
hi Label            guifg=#5d90cd guibg=NONE    gui=NONE
hi NonText          guifg=#333333 guibg=NONE    gui=NONE
hi Number           guifg=#46a609 guibg=NONE    gui=NONE
hi Operator         guifg=#4b4b4b guibg=NONE    gui=NONE
hi PreProc          guifg=#927c5d guibg=NONE    gui=NONE
hi Special          guifg=#929292 guibg=NONE    gui=NONE
hi SpecialKey       guifg=#bfbfbf guibg=#1f1f1f gui=NONE
hi Statement        guifg=#927c5d guibg=NONE    gui=NONE
hi StorageClass     guifg=#5d90cd guibg=NONE    gui=NONE
hi String           guifg=#5d90cd guibg=NONE    gui=NONE
hi Tag              guifg=#606060 guibg=NONE    gui=NONE
hi Title            guifg=#929292 guibg=NONE    gui=bold
hi Todo             guifg=#3c403b guibg=NONE    gui=inverse,bold
hi Type             guifg=#927c5d guibg=NONE    gui=NONE
hi Underlined       guifg=NONE    guibg=NONE    gui=underline
hi pythonClass  guifg=#927c5d guibg=NONE gui=NONE
hi pythonFunction  guifg=#d55555 guibg=NONE gui=NONE
hi pythonInterpolationDelimiter  guifg=NONE guibg=NONE gui=NONE
hi pythonSymbol  guifg=NONE guibg=NONE gui=NONE
hi pythonConstant  guifg=#a165ac guibg=NONE gui=NONE
hi pythonStringDelimiter  guifg=#5d90cd guibg=NONE gui=NONE
hi pythonBlockParameter  guifg=NONE guibg=NONE gui=NONE
hi pythonInstanceVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonRequire  guifg=#927c5d guibg=NONE gui=NONE
hi pythonGlobalVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonRegexp  guifg=#5d90cd guibg=NONE gui=NONE
hi pythonRegexpDelimiter  guifg=#5d90cd guibg=NONE gui=NONE
hi pythonEscape  guifg=NONE guibg=NONE gui=NONE
hi pythonControl  guifg=#927c5d guibg=NONE gui=NONE
hi pythonClassVariable  guifg=NONE guibg=NONE gui=NONE
hi pythonOperator  guifg=#4b4b4b guibg=NONE gui=NONE
hi pythonException  guifg=#927c5d guibg=NONE gui=NONE
hi pythonPseudoVariable  guifg=NONE guibg=NONE gui=NONE
hi makoDelimiter  guifg=#e92e2e guibg=NONE gui=NONE
hi makoComment  guifg=#3c403b guibg=NONE gui=NONE
hi htmlTag  guifg=#927c5d guibg=NONE gui=NONE
hi htmlEndTag  guifg=#927c5d guibg=NONE gui=NONE
hi htmlTagName  guifg=#927c5d guibg=NONE gui=NONE
hi htmlArg  guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar  guifg=#a165ac guibg=NONE gui=NONE
hi javaScriptFunction  guifg=#d55555 guibg=NONE gui=NONE
hi javaScriptBraces  guifg=NONE guibg=NONE gui=NONE
hi yamlKey  guifg=#606060 guibg=NONE gui=NONE
hi yamlAnchor  guifg=NONE guibg=NONE gui=NONE
hi yamlAlias  guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader  guifg=#5d90cd guibg=NONE gui=NONE
hi cssURL  guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName  guifg=#d55555 guibg=NONE gui=NONE
hi cssColor  guifg=#a165ac guibg=NONE gui=NONE
hi cssPseudoClassId  guifg=#606060 guibg=NONE gui=NONE
hi cssClassName  guifg=#d55555 guibg=NONE gui=NONE
hi cssValueLength  guifg=#46a609 guibg=NONE gui=NONE
hi cssCommonAttr  guifg=#a165ac guibg=NONE gui=NONE
hi cssBraces  guifg=NONE guibg=NONE gui=NONE

