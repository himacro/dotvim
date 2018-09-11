call plug#begin('~/AppData/Local/nvim/share/plugins')
Plug 'junegunn/seoul256.vim'

if has('windows')
	Plug 'Yggdroot/LeaderF', {'do': '.\install.bat'}
else
	Plug 'Yggdroot/LeaderF', {'do': './install.sh'}
endif

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
	
call plug#end()

colo seoul256 


""" editing
set ts=4
set sts=4
set sw=4


""" terminal
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

""" LeaderF
let g:Lf_ShortcutF = '<C-P>'

