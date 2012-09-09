set nocompatible
filetype off                   " REQUIRED!

set rtp+=~/.vim/vundle.git/ 
call vundle#rc()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Your bundles here
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

Bundle 'altercation/vim-colors-solarized'

Bundle 'kien/ctrlp.vim'
let g:ctrlp_cmd = 'CtrlPMixed'
set wildignore+=*/tmp/*,*/cassettes/*,*.so,*.swp,*.zip,*.log

filetype plugin indent on     " REQUIRED!

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Following lines are examples
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"Bundle 'rails.vim'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

