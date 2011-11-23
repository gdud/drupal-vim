"===============================
" GENERAL SETTINGS
"===============================

" use of pathogen plugin to keep each plugin in its own folder.
call pathogen#infect() 

"Use Vim settings, rather then Vi settings (much better!).
"This must be first, because it changes other options as a side effect.
set nocompatible

"load file type plugins and indent files
filetype indent plugin on

" syntax coloration
syntax on
   
" our default colorscheme use 256 colors
set t_Co=256

" default colorsheme
colorscheme xoria256

"===============================
" DRUPAL SETTINGS
"===============================

" always edit in utf-8
set encoding=utf-8

" allow to go to the declaration of a function with <ctrl-]>
" go to a project, use drupal-gentags script in scripts folder; then
" set correct path here to load tags for a given project.

" set tags+=~/.vim/tags/yourtags.tags

"set the spaces instead of regular tab
set expandtab

"sets tab and shiftwidth to 2 spaces according to drupals coding standard
set tabstop=2 shiftwidth=2 softtabstop=2

"use the same indent from current line when starting a new line
set autoindent

"use smart autoindenting. Used when line ends with {
set smartindent

" ensure that drupal extensions are read as php files.
" note that snipMate use filetype to load snippets
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.theme set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.engine set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
augroup END

" uncomment to highlight code lines and comments > 80 characters
" highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
" match OverLength '\%81v.*'

"===============================
" PHP SETTINGS
"===============================

" activer l'omnicompletion pour tous les langages
set omnifunc=syntaxcomplete#Complete

" for highlighting parent error ] or )
let php_parent_error_close = 1  

" help for commenting functions
set syntax=php.doxygen

" utiliser le compilateur php pour pouvoir vérifier la syntaxe
" avec ':make %' sur un fichier
set makeprg=php

"================================
" feel more cumfortable
"================================

" \ is definitly too difficult to reach !
" choose a more accessible 'leader' and 'localleader'
let mapleader = ";"
let maplocalleader=";"

" jump to tag definition (for example a function) when press F2
" you need ctags to make this works through a whole project
noremap <F2> <C-w>]
inoremap <F2> <Esc><C-w>]

" montrer les numéros de lignes
set nu

" illuminer les résultat de recherche
set hlsearch

" sets vim in pastemode and you avoid unwanted sideeffects
" not compatible with snipmate ??
" set paste

" wrap search
set wrapscan

" ignore case for search
set ignorecase

" but if our search is uppercase, search first for uppercase
set smartcase

" no swap file (temporary files for content recovery)
set noswapfile

" always keep at least 5 lines visible under the cursor when scrolling
set scrolloff=5

" always print status line
set laststatus=2

" print how many characters contains a line in status line
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{strlen(getline('.'))}\ characters\ %P

"================================
" PLUGIN TAGLIST
"================================

" taglist need to know where our ctags bin is located
let Tlist_Ctags_Cmd='/usr/bin/ctags'

"F12 toogle taglist buffer
nnoremap <silent> <F12> :TlistToggle<CR>

" show taglist at the right of the screen
let Tlist_Use_Right_Window=1

" Only print tags for current buffer
let Tlist_Show_One_File=1

" min width for taglist buffer. Drupal functions name are usually pretty long
let Tlist_WinWidth=50

" only print constants, class and functions in our taglist
" let tlist_php_settings = 'php;d:Constantes;c:Classes;f:Fonctions'
" let tlist_drupal_settings = 'php;d:Constantes;c:Classes;f:Fonctions'

"================================
" PLUGIN NERDTREE
"================================

" F9 toogle NERDTree file explorer.
noremap <F9> :NERDTreeToggle<CR>

" show NERDTree bookmarks at the top of file explorer
let NERDTreeShowBookmarks=1

