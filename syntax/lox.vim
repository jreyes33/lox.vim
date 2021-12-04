" Lox syntax file
" Language: Lox
" Maintainer: Timmy Jose
" Maintainer: Jonathan Reyes

if exists("b:current_syntax")
  finish
endif

" keywords
syn keyword loxStatement return print
syn keyword loxKeyword class nextgroup=loxClassName skipwhite skipempty
syn keyword loxKeyword var nextgroup=loxIdentifier skipwhite skipempty
syn keyword loxKeyword fun nextgroup=loxFunctionName skipwhite skipempty
syn keyword loxRepeat for while
syn keyword loxSpecial nil
syn keyword loxConstant this

" booleans
syn keyword loxBoolean true false

" operators
syn keyword loxOperator and or
syn match loxOperator "\v\*"
syn match loxOperator "\v\+"
syn match loxOperator "\v\-"
syn match loxOperator "\v/"
syn match loxOperator "\v\="
syn match loxOperator "\v!"

" conditionals
syn keyword loxConditional if else

" regions
syn region loxBlock start=/{/ end=/}/ transparent fold

"identifiers
syn match loxIdentifier /\<\K\k*/ display contained
syn match loxClassName /\<\K\k*/ display contained nextgroup=loxInherit skipwhite skipempty
syn match loxInherit /</ display contained nextgroup=loxSuperName skipwhite skipempty
syn match loxSuperName /\<\K\k*/ display contained
syn match loxFunctionName /\<\K\k*/ display contained

" numbers
syn match loxNumber "\v\-?\d+(\.\d+)?"

" strings
syn region loxString start="\v\"" end="\v\""

" comments
syn match loxComment "\v//.*$"

hi def link loxStatement Statement
hi def link loxKeyword Keyword
hi def link loxRepeat Repeat
hi def link loxSpecial Special
hi def link loxConstant Constant
hi def link loxBoolean Boolean
hi def link loxFunctionName Function
hi def link loxOperator Operator
hi def link loxConditional Conditional
hi def link loxIdentifier Identifier
hi def link loxClassName Type
hi def link loxSuperName Identifier
hi def link loxNumber Number
hi def link loxString String
hi def link loxComment Comment

let b:current_syntax = "lox"
