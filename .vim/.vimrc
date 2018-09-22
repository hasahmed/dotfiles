execute pathogen#infect()
syntax on
filetype plugin indent on
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
" vertical line indentation
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#09AA08'
let g:indentLine_char = '│'
let delimitMate_expand_cr = 2
let main_sytax='C'
set number
set cursorline
set list
set colorcolumn=82

"super tab settings
let g:SuperTabLongestHighlight = 0
"let g:SuperTabClosePreviewOnPopupClose = 1
let g:SuperTabRetainCompletionDuration = 'session'

function DelayScreenClear()
    sleep 500m
    echo ''
endfunction



"vim-ruby configurations
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1
let g:rubycomplete_load_gemfile = 1
let ruby_space_errors = 1


"set case insensitive search
set ignorecase
"will do case-sensitive search if any capital letters are input
set smartcase

"mappings for saving files with F10-12
map <silent><F9> :wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map! <silent><F9> <ESC>:wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map <silent><F10> :wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map! <silent><F10> <ESC>:wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map <silent><F11> :wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map! <silent><F11> <ESC>:w<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map <silent><F12> :wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map! <silent><F12> <ESC>:wa<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map <F7> mzgg=G`z


map <silent><C-G> :w<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>
map! <silent><C-G> <ESC>:w<CR>:echo'SAVED at: '.strftime('%T')<CR>:call DelayScreenClear()<CR>

"mapping to break line in normal mode
nnoremap <C-N> i<CR><ESC>

"mappings for alt j, k moving the current line up or down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv


nnoremap <A-J> :m .+1<CR>==
nnoremap <A-K> :m .-2<CR>==
inoremap <A-J> <Esc>:m .+1<CR>==gi
inoremap <A-K> <Esc>:m .-2<CR>==gi
vnoremap <A-J> :m '>+1<CR>gv=gv
vnoremap <A-K> :m '<-2<CR>gv=gv
nnoremap <space> i<space><esc>

"set ruby's tabwidth to 2
autocmd BufReadPost,BufNewFile *.rb setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufReadPost,BufNewFile *.html setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufReadPost,BufNewFile *.coffee setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufReadPost,BufNewFile *.pug setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufReadPost,BufNewFile *.jade setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
autocmd BufReadPost,BufNewFile *.ts setlocal expandtab softtabstop=2 shiftwidth=2 tabstop=2
"autocmd FileType html setlocal shiftwidth=2 tabstop=2
"autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
"autocmd FileType pug setlocal shiftwidth=2 tabstop=2
"autocmd FileType jade setlocal shiftwidth=2 tabstop=2

colorscheme monokai
hi link javaScriptTemplateDelim String
hi link javaScriptTemplateVar Text
hi link javaScriptTemplateString String
