" set personal preferences not set by tpope's vim-sensible
let g:mapleader=','

set ignorecase
set smartcase

" show matches and highlight searches
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>

" save a keypress for ex commands
nnoremap ; :

" save us from vim's default regex format
nnoremap / /\v
vnoremap / /\v

" we like pretty colors
colorscheme inkpot

" allow viewing of whitespace characters
set showbreak=\\ " one space after the backslash
set listchars=tab:..,trail:_,nbsp:~,extends:>,precedes:<
nmap <leader>l :set list!<cr>

" delete trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" wrap paragraphs
nnoremap <leader>q gqip

" edit my ~/.vim/vimrc and ~/.vim/gvimrc files
nnoremap <leader>ev <C-w>v<C-w>l:e $MYVIMRC<cr>
nnoremap <leader>eg <C-w>v<C-w>l:e $MYGVIMRC<cr>

" split window vertically and switch to new window
nnoremap <leader>w <C-w>v<C-w>l

" toggle between relative line numbers and absolute line number
" 0 = default or no numbers
" 1 = absolute numbers
" 2 = relative numbers
let b:bml_line_numbers = 0
function! NumberToggle()
	if b:bml_line_numbers == 0
		let b:bml_line_numbers = 1
		set number
		set norelativenumber
	elseif b:bml_line_numbers == 1
		let b:bml_line_numbers = 2
		set nonumber
		set relativenumber
	elseif b:bml_line_numbers == 2
		let b:bml_line_numbers = 0
		set nonumber
		set norelativenumber
	endif
endfunc

nnoremap <leader>n :call NumberToggle()<cr>
