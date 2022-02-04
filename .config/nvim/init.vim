lua << EOF
--[[
  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
Neovim init file
Maintainer: JZDoot
Website: https://gitlab.com/jzdoot/dotfiles/-/blob/master/.config/nvim/init.vim
--]]
EOF
syntax on set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set number relativenumber
set smartindent
set incsearch
set splitbelow splitright " Splits open from opisite sides
set signcolumn=number

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'vimwiki/vimwiki'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'mboughaba/i3config.vim'
Plug 'romgrk/doom-one.vim'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'Python-mode/python-mode'
Plug 'blankname/vim-fish'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }
Plug 'paretje/nvim-man'
Plug 'vim-airline/vim-airline-themes'
Plug 'folke/todo-comments.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'folke/trouble.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
Plug 'mbbill/undotree'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-surround'

call plug#end()
colorscheme doom-one
" Airlinetheme minimalist
let g:airline_theme='minimalist'
set termguicolors
" FZF Stuff 
let g:fzf_layout = { 'down': '35%'} "setting fzf to open in a new buffer below
" Functions Yay
" fun! LspLocation
" autocmd Stuff
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " no auto comment on new line
aug FileType java
	au!
	au FileType java set signcolumn=yes
	au Filetype java set makeprg=javac\ -g\ % "sets the :make to the java compiler
	au Filetype java map <leader>Rm :make<CR> :vsp<CR> :terminal java -cp $(pwd) Main<CR>
	au Filetype java map <leader>Rh :make<CR> :vsp<CR> :term java -cp %:p:h %:t:r<CR>
	au FileType java map <leader>Rcc :make<CR> :vsp<CR> :term java -cp $(pwd) %:t:r<CR>
	au FileType java map <leader>Rch :make<CR> :!java -cp $(pwd) %:t:r<CR>
	au FileType java map <leader>Rr :!rm *.class<CR>
	au Filetype java map <leader>r :vsp<CR> :terminal java -cp $(pwd) Main<CR>
aug end
aug FileType lua
	au!
	au FileType lua set signcolumn=yes
	au Filetype lua set makeprg=luac5.2\ % "sets the :make to lua compiler
	" au Filetype lua map <leader>r :vsp<CR> :terminal lua %<CR>
	au FileType lua map <leader>r :vsp<CR> :terminal lua %<CR>
aug end
aug bash
	au!
	au FileType sh set signcolumn=yes
aug vim
	au!
	au Filetype vim set signcolumn=yes
aug end
aug i3config_ft_detection "i3 config
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
let g:javascript_plugin_flow = 1
filetype plugin indent on
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Keybinds
map <space>. :Telescope find_files<CR>
let mapleader =";"
map <leader>. :Telescope find_files<CR>
map <leader>t :term fish<CR>
map <leader>T :vsp<CR> :term fish<CR>
map <leader>l :tabnext<CR>
map <leader>h :tabprevious<CR>
map <leader>n :tabnew<CR>
map <leader>N :tabclose<CR>
map <leader>m :make<CR>
map <leader>c :!code %:p:h<CR>
map <leader>C :cd %:p:h<CR>
map <leader><F10>e :sp<CR> :e ~/.config/nvim/init.vim<CR>
map <leader><F10>u :PlugUpdate<CR> :CocUpdate<CR> :TSUpdate<CR>
map <leader><F10>s :source ~/.config/nvim/init.vim<CR>
map <leader>` :Ex<CR>
map <leader>~ :vsp<CR> :Ex<CR>
map <leader>z :UndotreeToggle<CR>
map <leader>ga :G add
map <leader>gaa :G add -A<CR>
map <leader>gc :G commit<CR>
map <leader>gp :G push
map <leader>gpa :G push all<CR> :G push<CR>
map <leader>gs :G<CR>
" nnoremap <silent> <leader> :WhichKey ';'<CR>
"Sources
source $HOME/.config/nvim/plug-config/coc.vim
lua require("mod") --Lua Configuration
