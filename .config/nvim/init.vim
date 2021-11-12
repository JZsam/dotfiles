syntax on set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set number relativenumber
set smartindent
set incsearch
set splitbelow splitright " Splits open from opisite sides

call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'jreybert/vimagit'
Plug 'vimwiki/vimwiki'
Plug 'bling/vim-airline'
Plug 'tpope/vim-commentary'
Plug 'ap/vim-css-color'
Plug 'vim-utils/vim-man'
Plug 'mboughaba/i3config.vim'
Plug 'romgrk/doom-one.vim'
Plug 'pangloss/vim-javascript'
Plug 'junegunn/fzf.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'Python-mode/python-mode'
Plug 'blankname/vim-fish'
Plug 'jceb/vim-orgmode'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'romgrk/doom-one.vim'
Plug 'frenzyexists/aquarium-vim', { 'branch': 'develop' }

call plug#end()
" Color Scheme
" set background=dark
" colorscheme aquarium
" let g:aquarium_style="dark"
" let g:airline_theme="base16_aquarium_dark"
" LSP Stuff 
lua << EOF
--[[require'lspconfig'.java_language_server.setup{
cmd = {"$HOME/.config/nvim/lsp/java-language-server/dist/lang_server_linux"}
filetypes = { "java" }
    root_dir = function(startpath)
        return M.search_ancestors(startpath, matcher)
      end
    settings = {}
}-- Setting up LSP for java]]--
EOF
" FZF Stuff 
let g:fzf_layout = { 'down': '35%'} "setting fzf to open in a new buffer below
" autocmd Stuff
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " no auto comment on new line
aug FileType java
	au Filetype java set makeprg=javac\ -g\ % "sets the :make to the java compiler
	au Filetype java map <leader>Rm :make<CR> :vsp<CR> :terminal java -cp $(pwd) Main<CR>
	au Filetype java map <leader>Rh :cd %:p:h<CR> :vsp<CR> :term java -cp $(pwd) Main<CR>
	au Filetype java map <leader>r :vsp<CR> :terminal java -cp $(pwd) Main<CR>
aug end
aug FileType lua
	au Filetype lua set makeprg=luac5.2\ % "sets the :make to lua compiler
	au Filetype lua map <leader>r :vsp<CR> :terminal lua5.2 %<CR>
aug end
aug i3config_ft_detection "i3 config
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
" Telescope
" Other
let g:javascript_plugin_flow = 1
filetype plugin indent on
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Keybinds
let mapleader =" "
" map <leader>. :Files<CR>
map <leader>. :Telescope find_files<CR>
map <leader>t :term fish<CR>
map <leader>T :vsp<CR> :term fish<CR>
map <leader>l :tabnext<CR>
map <leader>h :tabprevious<CR>
map <leader>n :tabnew<CR>
map <leader>N :tabclose<CR>
map <leader>m :make<CR>
map <leader>c :copen<CR>
map <leader><F10>e :sp<CR> :e ~/.config/nvim/init.vim<CR>
map <leader><F10>s :source ~/.config/nvim/init.vim<CR>
map <leader>` :Ex<CR>
map <leader>~ :vsp<CR> :Ex<CR>
map <leader>g :cd %:p:h<CR>
"Sources
source $HOME/.config/nvim/plug-config/coc.vim
" lua require("jzdoot")
source $HOME/.config/nvim/plug-config/telescope.vim
