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
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
Plug 'Python-mode/python-mode'
Plug 'blankname/vim-fish'
Plug 'jceb/vim-orgmode'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}
Plug 'romgrk/doom-one.vim'

call plug#end()
" Color Scheme
" set background=dark
" colorscheme doom-one
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
	au Filetype java map <leader>R :make<Return> :vsp<Return> :terminal java -cp $(pwd) Main<Return>
	au Filetype java map <leader>r :vsp<Return> :terminal java -cp $(pwd) Main<Return>
aug end
aug FileType lua
	au Filetype lua set makeprg=luac5.2\ % "sets the :make to lua compiler
	au Filetype lua map <leader>r :vsp<Return> :terminal lua5.2 %<Return>
aug end
aug i3config_ft_detection "i3 config
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end
" Other
let g:javascript_plugin_flow = 1
filetype plugin indent on
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Keybinds
let mapleader =" "
map <leader>. :Files<CR>
map <leader>t :term fish<Return>
map <leader>T :vsp<Return> :term fish<Return>
map <leader>l :tabnext<Return>
map <leader>h :tabprevious<Return>
map <leader>n :tabnew<Return>
map <leader>N :tabclose<Return>
map <leader>m :make<Return>
map <leader>c :copen<Return>
map <leader><F10>e :sp<Return> :e ~/.config/nvim/init.vim<Return>
map <leader><F10>s :source ~/.config/nvim/init.vim<Return>
map <leader>` :Ex<Return>
map <leader>~ :vsp<Return> :Ex<Return>
"Sources
source $HOME/.config/nvim/plug-config/coc.vim
