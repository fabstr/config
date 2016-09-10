set nocompatible
filetype off

" lista med plugins som är bra att ha
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' 			" pakethanterare
Plugin 'altercation/vim-colors-solarized'	" färgschema
Plugin 'shougo/unite.vim'			" behövs för vimfiler
Plugin 'shougo/vimfiler.vim'			" leta bland filer
Plugin 'majutsushi/tagbar'			" visa lista med funktioner/metoder
Plugin 'scrooloose/syntastic'			" klaga när syntaxen är fel
Plugin 'scrooloose/nerdcommenter'		" kommentera bort/fram kod
call vundle#end()
filetype plugin indent on

" färgschema
syntax enable
set background=light
let g:solarized_termcolors=256
colorscheme solarized

" öppna vimfiler när man trycker ctrl-n
nmap <C-n> :VimFiler<CR>
let g:vimfiler_as_default_explorer = 1

" visa radnummer
set number

" indentera ''på ett vettigt sätt''
set foldmethod=indent

" visa kolumn vid 81 tecken (så att allt innan strecket är okej att skriva på)
set colorcolumn=81

" rekommenderade inställningar för syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" visa den nuvarande raden mörkare
set cursorline
