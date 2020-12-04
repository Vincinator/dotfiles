
:let mapleader = "\<F10>"


call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'majutsushi/tagbar'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'junegunn/goyo.vim'
Plug 'klen/python-mode'
Plug 'dense-analysis/ale'

Plug 'jeffkreeftmeijer/vim-numbertoggle'

" Initialize plugin system
call plug#end()

" -----------------------
" Plugin Preferences
" -----------------------

" ale jenkins options
let $FZF_DEFAULT_OPTS="--bind \"ctrl-n:preview-down,ctrl-p:preview-up\""
let g:ale_history_log_output = 1
let g:ale_use_global_executables = 1
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_open_list = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'Jenkinsfile': ['checkci'],
\}

" -----------------------
" Plugin Shortcuts
" -----------------------

:map <Leader>t :TagbarToggle<CR>
:map <Leader>n :NERDTreeToggle<CR>


" -----------------------
" Shortcuts
" -----------------------


:map <Leader>b :Buffers<CR>
:map <Leader>g :GFiles<CR>
:map <Leader>h :History<CR>
:map <Leader>m :Commits<CR>

" -----------------------
" Editor Preferences
" -----------------------

set number relativenumber

set colorcolumn=81
execute "set colorcolumn=" . join(range(81,335), ',')
highlight ColorColumn ctermbg=Black ctermfg=DarkRed

set backspace=indent,eol,start  " more powerful backspacing




" Highlight trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

