" =======================================================
" GENERAL
" =======================================================

set nocompatible           " Disable compatibility with vi which can cause unexpected issues.
filetype on                " Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype plugin on         " Enable plugins and load plugin for the detected file type.
filetype indent on         " Load an indent file for the detected file type.
set number                 " Add numbers to each line on the left-hand side.
set cursorline             " Highlight cursor line underneath the cursor horizontally.
set tabstop=4              " Set tab width to 4 columns.
set nobackup               " Do not save backup files.
set scrolloff=10           " Do not let cursor scroll below or above N number of lines when scrolling.
set nowrap                 " Do not wrap lines. Allow long lines to extend as far as the line goes.
set incsearch              " While searching though a file incrementally highlight matching characters as you type.
set ignorecase             " Ignore capital letters during search.
set showcmd                " Show partial command you type in the last line of the screen.
set showmode               " Show the mode you are on the last line.
set showmatch              " Show matching words during a search.
set hlsearch               " Use highlighting when doing a search.
set history=1000           " Set the commands to save in history default number is 20.
set updatetime=100

" =======================================================
" MENU AUTOCOMPLETE 
" =======================================================
set wildmenu               " Enable auto completion menu after pressing TAB.
set wildmode=list:longest  " Make wildmenu behave like similar to Bash completion.

" There are certain files that we would never want to edit with Vim.
" Wildmenu will ignore files with these extensions.
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx


" =======================================================
" PLUGINS
" =======================================================
call plug#begin('~/.vim/plugged')
  Plug 'airblade/vim-gitgutter'
  Plug 'jelera/vim-javascript-syntax'
  Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
  Plug 'tomasiser/vim-code-dark'
call plug#end()


" =======================================================
" MAPPINGS
" =======================================================
" map_mode <what_you_type> <what_is_executed>
nnoremap n nzz
nnoremap N Nzz


" =======================================================
" VIM SCRIPTS
" =======================================================
augroup filetype_vim       " This enables folding using the marker method
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

autocmd Filetype html setlocal tabstop=2 shiftwidth=2 expandtab

if version >= 703
    set undodir=~/.vim/backup
    set undofile
    set undoreload=10000
endif

augroup cursor_off
    autocmd!
    autocmd WinLeave * set nocursorline nocursorcolumn
    autocmd WinEnter * set cursorline cursorcolumn
augroup END


" =======================================================
" STATUS LINE
" =======================================================
" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %F\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%

" Show the status on the second to last line.
set laststatus=2

" =======================================================
" STYLING (This has to be at the end in order to load correctly)
" =======================================================
colorscheme codedark
set background=dark
