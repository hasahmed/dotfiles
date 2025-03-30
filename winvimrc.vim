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

function DelayScreenClear()
    sleep 500m
    echo ''
endfunction


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

nnoremap <C-J> :m .+1<CR>==
nnoremap <C-K> :m .-2<CR>==
inoremap <C-J> <Esc>:m .+1<CR>==gi
inoremap <C-K> <Esc>:m .-2<CR>==gi
vnoremap <C-J> :m '>+1<CR>gv=gv
vnoremap <C-K> :m '<-2<CR>gv=gv
nnoremap <space> i<space><esc>


colorscheme molokai

" Disable annoying beeping
set noerrorbells
set vb t_vb=
