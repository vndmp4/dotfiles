set nu relativenumber 

set clipboard=unnamedplus

syntax on

syntax enable

set mouse=a

set autoread

set autowrite

set ts=4 sw=4

call plug#begin('~/.config/nvim/plugged')
Plug 'mattn/emmet-vim'
call plug#end()

let g:user_emmet_leader_key=','

:imap jj <Esc>
