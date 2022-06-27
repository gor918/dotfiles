let mapleader = "<space>"
let g:mapleader = "<space>"

call plug#begin()

Plug 'cohama/lexima.vim' 
Plug 'tpope/vim-fugitive' 
Plug 'github/copilot.vim'
Plug 'itchyny/lightline.vim'
Plug 'Pocco81/AutoSave.nvim'
Plug 'navarasu/onedark.nvim'
Plug 'ryanoasis/vim-devicons'

" Fzf {{{
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  let g:fzf_command_prefix = 'Fzf'
  " disable statusline overriding
  let g:fzf_nvim_statusline = 0
  let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --no-line-number --ignore-file ~/.gitignore'

Plug 'airblade/vim-rooter'
  let g:rooter_silent_chdir = 1
  let g:rooter_patterns = ['.git/', 'stack.yaml']
" }}}

Plug 'mhinz/vim-signify'
  let g:signify_vcs_list = ['git']
  let g:signify_sign_add               = '+'
  let g:signify_sign_delete            = '-'
  let g:signify_sign_delete_first_line = g:signify_sign_delete
  let g:signify_sign_change            = '~'
  let g:signify_sign_changedelete      = g:signify_sign_change
" }}}

" NERDTree {{{
Plug 'scrooloose/nerdtree'
    let NERDTreeShowHidden = 1
    let NERDTreeIgnore = ['\.git', '\.DS_Store'] 
"}}}

" coc.nvim {{{
Plug 'neoclide/coc.nvim', {'branch': 'release'}
  nmap <leader>rn <Plug>(coc-rename)
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)
  nmap <silent> ]w <Plug>(coc-diagnostic-next)
  nmap <silent> [w <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>rf <Plug>(coc-refactor)
  nmap <silent> <leader>? :call CocAction('doHover')<CR>
  nmap <localleader>? :CocList diagnostics<CR>
  nnoremap <expr><C-f> coc#util#has_float() ? coc#util#float_scroll(1) : "\<C-f>"
  nnoremap <expr><C-b> coc#util#has_float() ? coc#util#float_scroll(0) : "\<C-b>"
  nnoremap  <silent> <Leader>t :CocList outline<CR>
  nnoremap  <silent> <localleader>a :CocAction<CR>
" }}}

call plug#end()

" Apperance
let g:onedark_config = {
    \ 'style': 'warmer',
\}

colorscheme onedark

autocmd VimEnter * NERDTree | wincmd p

" Visual
syntax on
set completeopt=menu
set tabstop=4
set cursorline " Highlight current line
set wildmenu
set showcmd
set number

" Ignore some folders
set wildignore+=**/node_modules/**
set wildignore+=**/build/**
set wildignore+=**/dist/**
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

nnoremap  <silent> <Leader>a :FzfRg<CR>
nmap <silent> <Leader>f :FzfRg <C-R><C-W><CR>
