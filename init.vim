" Plug-vim
if has('nvim')
	call plug#begin(stdpath('data') . '/plugged')
else
	call plug#begin('~/.vim/plugged')
end

if has('linux')
	Plug 'junegunn/seoul256.vim'
end

if has('windows')
	Plug 'Yggdroot/LeaderF', {'do': '.\install.bat'}
else
	Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
endif

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'vim-airline/vim-airline'
Plug 'jsfaint/gen_tags.vim'
"Plug 'wincent/ferret'
Plug 'jremmen/vim-ripgrep'

call plug#end()

"colorscheme
try
if has('linux')
	colo seoul256 
else
	colo default
endif
catch
endtry

" editing
set ts=4
set sts=4
set sw=4
set expandtab
set autoindent

" terminal
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" LeaderF
try
    let g:Lf_ShortcutF = '<C-P>'
    let g:Lf_WildIgnore = {
                \ 'dir': ['.git', '.svn', '.hg', '.cvs'],
                \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
                \}
    let g:Lf_DefaultExternalTool = 'rg'
    let g:Lf_UseVersionControlTool = 0
catch
endtry

try
" ncm2
set completeopt=noinsert,menuone,noselect
autocmd BufEnter * call ncm2#enable_for_buffer()
catch
endtry

try
" gtags
let $GTAGSLABEL = 'native-pygments'
if has('windows')
	let $GTAGSCONF = 'c:\ThirdParty\global\share\gtags\gtags.conf'
else
	let $GTAGSCONF = '/usr/share/gtags/gtags.conf'
endif

" gen_gtags
let g:loaded_gentags#ctags = 1
let g:gen_tags#gtags_opts = ['-c', '--verbose']
let g:gen_tags#use_cache_dir = 0
let g:gen_tags#blacklist = ['$HOME', '$HOME\Projects']
let g:gen_tags#statusline = 0
let g:gen_tags#verbose = 0
catch
endtry

