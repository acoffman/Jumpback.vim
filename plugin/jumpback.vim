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

function! TabChanged()
  :ruby tab_changed
endfunction

function! Jump()
  :ruby jump_tab
endfunction

function! Startup()
  :ruby startup
endfunction

augroup autojumper
  autocmd TabEnter * :call TabChanged()
  autocmd GUIEnter * :call Startup()
augroup END

command Jumpback :call Jump()

ruby << EOF

def tab_changed
  @previous = @current if @current
  @current =  VIM::evaluate("tabpagenr()")
end

def jump_tab
 if @previous
   VIM::command("tabn #{@previous}")
 end
end

def startup
  @current = VIM::evaluate("tabpagenr()")
end

EOF

