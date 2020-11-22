call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/argtextobj.vim'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'asvetliakov/vim-easymotion'
Plug 'machakann/vim-highlightedyank'
Plug 'tommcdo/vim-exchange'
Plug 'goldfeld/vim-seek'

call plug#end()

let mapleader=" "

"source different config if it's from vscode-neovim
if exists('g:vscode')
    source ~/.dotfiles/vim/vscode-neovim.vim
else 
    source ~/.vimrc
endif