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
"    let g:Lf_ShortcutF = '<C-P>'
    let g:Lf_ShortcutF = "<leader>ff"
    let g:Lf_WildIgnore = {
                \ 'dir': ['.git', '.svn', '.hg', '.cvs'],
                \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
                \}
    let g:Lf_DefaultExternalTool = 'rg'
    let g:Lf_UseVersionControlTool = 0
    let g:Lf_HideHelp = 1
    let g:Lf_UseCache = 0
    let g:Lf_IgnoreCurrentBufferName = 1
    " popup mode
    let g:Lf_WindowPosition = 'popup'
    let g:Lf_PreviewInPopup = 1
    let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
    let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

"    let g:Lf_ShortcutF = "<leader>ff"
    noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
    noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
    noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
    noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

    noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
    noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
    " search visually selected text literally
    xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
    noremap go :<C-U>Leaderf! rg --recall<CR>
    " Search a string
    noremap <leader>fs :<C-U><C-R>=printf("Leaderf rg -e %s", "")<CR>

    " should use `Leaderf gtags --update` first
    let g:Lf_GtagsAutoGenerate = 0
    let g:Lf_Gtagslabel = 'native-pygments'
    noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
    noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
    noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
    noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
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

