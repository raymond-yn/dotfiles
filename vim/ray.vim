""" there are l lot conf recommended by https://github.com/skywind3000/vim-init
" Prevent repeated loading
if get(s:, 'loaded', 0) != 0
    finish
else
    let s:loaded = 1
endif

" getdir of current directory
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

" define a command to load script
command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

" add dir of this script to runtimepath
exec 'set rtp+='.s:home

" add ~/.vim  dir to runtimepath
set rtp+=~/.vim

"----------------------------------------------
"source from vim scripts
"---------------------------------------------
LoadScript styles.vim
LoadScript plugins.vim
LoadScript properties.vim
LoadScript keymaps.vim 
LoadScript python3.vim 
