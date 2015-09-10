set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
" This is the Vundle package, which can be found on GitHub.
" For GitHub repos, you specify plugins using the
" 'user/repository' format
Plugin 'gmarik/vundle'

" We could also add repositories with a ".git" extension
Plugin 'scrooloose/nerdtree.git'

" To get plugins from Vim Scripts, you can reference the plugin
" by name as it appears on the site
Plugin 'Buffergator'

Plugin 'VimPdb'

Plugin 'python.vim'

Plugin 'taglist.vim'

Plugin 'Tasklist.vim'

Plugin 'YouCompleteMe'
Plugin 'minibufexpl.vim'
" Now we can turn our filetype functionality back on
filetype plugin indent on
:syntax on
set modeline 
set cindent
set background=dark
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let mapleader=" "
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Auto_Open = 1
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>
map T :TaskList<CR>
map P :TlistToggle<CR>
set expandtab
set textwidth=79
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set exrc
set secure
set colorcolumn=110
highlight ColorColoumn ctermbg=darkgray
augroup project
	    autocmd!
	    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
map <leader>n :NERDTreeToggle<CR>
nnoremap <leader>td <Plug>TaskList 
map <leader>g :GundoToggle<CR> 
set foldmethod=indent   
set foldlevel=99 
map <c-j> <c-w>j 
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h 
let g:pep8_map='<leader>8' 
map T :TaskList<CR>
map P :TlistToggle<CR>
