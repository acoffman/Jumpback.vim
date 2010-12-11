" Exit quickly when already loaded.
if exists("g:loaded_jumpback")
  finish
endif

" Exit quicky if running in compatible mode
if &compatible
  echohl ErrorMsg
  echohl none
  finish
endif

" Check for Ruby functionality.
if !has("ruby")
    echohl ErrorMsg
    echon "Sorry, Jumpback requires ruby support."
  finish
endif

let g:loaded_jumpback = "true"

function! s:LoadFile()
  :rubyfile jumpback.rb
endfunction


