:set number
:set relativenumber

:set autoindent
:set smarttab

:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set mouse=a
:set wrap linebreak

syntax on
set encoding=utf-8


:map <M-C-L> :Neoformat<CR>

"Semshi mapping
nmap <silent> <leader>rr :Semshi rename<CR>
nmap <silent> <Tab> :Semshi goto name next<CR>
nmap <silent> <S-Tab> :Semshi goto name prev<CR>
nmap <silent> <leader>c :Semshi goto class next<CR>
nmap <silent> <leader>C :Semshi goto class prev<CR>
nmap <silent> <leader>f :Semshi goto function next<CR>
nmap <silent> <leader>F :Semshi goto function prev<CR>
nmap <silent> <leader>gu :Semshi goto unresolved first<CR>
nmap <silent> <leader>gp :Semshi goto parameterUnused first<CR>
nmap <silent> <leader>ee :Semshi error<CR>
nmap <silent> <leader>ge :Semshi goto error<CR>

call plug#begin("~/.config/nvim/plugged")

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'
Plug 'sbdchd/neoformat'
Plug 'davidhalter/jedi-vim'
Plug 'machakann/vim-highlightedyank'
Plug 'preservim/nerdtree'
Plug 'xavierd/clang_complete'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
Plug 'vim-scripts/TagHighlight'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'numirias/semshi'
Plug 'ryanoasis/vim-devicons'
Plug 'KarimElghamry/vim-auto-comment'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme onedark



let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
let g:ycm_filetype_blacklist = {'python' : 1}

let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "minimalist"


if &filetype ==# 'python'
	let g:jedi#auto_initialization = 1
	"let g:deoplete#enable_at_startup=0
	call deoplete#custom#option('auto_complete_delay', 100)
endif

let g:clang_complete_auto = 1
let g:clang_complete_loaded = 1

set completeopt-=preview

let g:lsp_cxx_hl_use_text_props=1

