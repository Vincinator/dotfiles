
call plug#begin('~/.vim/plugged')

Plug 'majutsushi/tagbar'


Plug 'klen/python-mode'


" Initialize plugin system
call plug#end()


" -----------------------
" Plugin Shortcuts
" -----------------------
nmap <F8> :TagbarToggle<CR>

" -----------------------
" Editor Preferences
" -----------------------

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

