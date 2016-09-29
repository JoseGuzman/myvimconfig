" Vim syntax file
" Language: NEURON (hoc, ses)
" Last change: Thu Sep 22 23:32:16 CEST 2016
" Author: Jose Guzman sjm.guzman@gmail.com
" see http://vim.wikia.com/wiki/Creating_your_own_syntax_files:

if exists("b:current_syntax")
    finish
endif

echom "Loading NEURON syntax"

let b:current_syntax = "NEURON"


" Keywords
syn keyword nrnObject Vector List Graph 
syn keyword nrnObject NetCon
syn keyword nrnObject IClamp ExpSyn
syn keyword nrnObject Random 
syn keyword nrnObject PythonObject 

syn keyword nrnType new objref objectvar 
syn keyword nrnType strdef public local external

syn keyword nrnFunction print sprint xopen 

syn keyword nrnStatement for if then else endif forall
syn keyword nrnStatement create insert access connect
syn keyword nrnStatement obfunc proc begintemplate endtemplate 


"syn keyword NEURONBlockCmd L diam nseg

syn keyword NEURONFix TODO FIXME 

" Matches for comments
syn match nrnComment "//.*$" contains=NEURONFix
syn match nrnComment display "\*/" contains=NEURONFix

" Match Operators
syntax match NEURONOperator "\v\*"
"syntax match NEURONOperator "\v/\"
syntax match NEURONOperator "\v\+"
syntax match NEURONOperator "\v-"
syntax match NEURONOperator "\v\?"
syntax match NEURONOperator "\v\*\="
syntax match NEURONOperator "\v/\="
syntax match NEURONOperator "\v\+\="
syntax match NEURONOperator "\v-\="
syntax match NEURONOperator "\v\="
syntax match NEURONOperator "\v\!"

" integer numbers
syntax match NEURONNumbers "\<\d\+[ij]\=\>"

" floating point numbers, with dot, optional exponent
syntax match NEURONNumbers "\<\d\+\(\.\d*\)\=\([edED][-+]\=\d\+\)\=[ij]\=\>"

" floating point number, starting with a dot, optional exponent (OK)
syntax match NEURONNumbers "\.\d\+\([edED][-+]\=\d\+\)\=[ij]\=\>"

" Regions between braquets (OK)
syn region nrnBlock start="{" end="}" fold transparent contains=nrnObject, nrnType, nrnComment, nrnStatement, nrnFunction, NEURONNumbers

syn region nrnComment start="/\*" end="\*/"

" Define the default highlighting.
highlight link nrnObject      Keyword
highlight link nrnType         Type
highlight link nrnComment      Comment
highlight link nrnStatement    Statement
highlight link nrnFunction     Function

highlight link NEURONOperator  Operator
highlight link NEURONNumbers   Number
