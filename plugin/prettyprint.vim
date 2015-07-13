" Prettyprint vim variables.
" Version: 0.3.2.1
" Author : thinca <thinca+vim@gmail.com>
" Changes: Manpreet Singh <junkblocker@yahoo.com>
" License: zlib License

if exists('g:loaded_prettyprint')
  finish
endif
let g:loaded_prettyprint = 1

let s:save_cpo = &cpo
set cpo&vim

function! PrettyPrint(...)
  return call('prettyprint#prettyprint', a:000)
endfunction

" commands. {{{1
command! -nargs=+ -bang -complete=expression PrettyPrint call prettyprint#echo(PP(<args>), <bang>0, <q-args>)
" }}}
let &cpo = s:save_cpo
unlet s:save_cpo
