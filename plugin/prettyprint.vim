" Prettyprint vim variables.
" Version: 0.3.3.1
" Author : thinca <thinca+vim@gmail.com>
" Changes: Manpreet Singh <junkblocker@yahoo.com>
" License: zlib License

if exists('g:loaded_prettyprint')
  finish
endif
let g:loaded_prettyprint = 1

function! PrettyPrint(...) abort
  return call('prettyprint#prettyprint', a:000)
endfunction

" commands. {{{1
command! -nargs=+ -bang -complete=expression PrettyPrint PP<bang> <args>
