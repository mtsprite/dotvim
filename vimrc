set nocompatible

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader=","

"Quickley edit/reload the vimrc file"
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set nowrap               "dont wrap lines
set tabstop=4            "a tabstop is 4 spaces
set backspace=indent,eol,start 
                         "allow backspaceing over everything
set autoindent           "alsways set autoendenting on
set copyindent           "copy the previus indentation
set hidden               "allows us to have hidden buffers
set shiftwidth=4         "number of spaces to use for auto-indenting
set shiftround           "use multipule of shiftwidth when indenting with '<' and '>'
set number               "allow line numbers
set showmatch            "set show matching parenthisis
set ignorecase           "ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase,
                         "    case-sensitive otherwise
set smarttab             " insert tabs on the start of a line according to
                         "    shiftwidth, not tabstop
set hlsearch             "highlight search items
set incsearch            "show search matches as you type
syntax on                "allows syntax highlighting
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep
set nobackup
set noswapfile

filetype plugin indent on

if has('autocmd')
  autocmd filetype python set expandtab
  autocmd filetype html,xml set listchars-=tab:>.
endif

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>

set mouse=a

nnoremap ; :
