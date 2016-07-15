filetype plugin indent on


:let mapleader = "#"

execute pathogen#infect()

let g:jetdi#popup_on_dot = 0

set incsearch
set hlsearch

set ic

set laststatus=2 " Always display the status line
set shiftround
set expandtab
set nojoinspaces
set number


set splitbelow
set splitright


set tabstop=4
set shiftwidth=4

set autoindent  


set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0 
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:syntastic_echo_current_error = 1

function! ToggleErrors()
    let old_last_winnr = winnr('$')
    lclose
    if old_last_winnr == winnr('$')
        " Nothing was closed, open syntastic error location panel
        Errors
    endif
endfunction

nnoremap <silent> <C-e> :<C-u>call ToggleErrors()<CR>



map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
set mouse=a
