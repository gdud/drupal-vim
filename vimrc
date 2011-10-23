" use pathogen to separate each plugin in its own folder.
call pathogen#infect() 


"===============================
" DRUPAL SETTINGS
"===============================

" allow to go to the declaration of a function with <ctrl-]>
set tags +=~/.vim/tags/drupal6.tags

" set tags +=~/.vim/tags/drupal7-core.tags
set dict +=~/.vim/dictionaries/drupal6.dict

" add dictionaries to autocomplete shortcut (crtl-p, ctrl-n)
set complete-=k complete+=k

"set the spaces instead of regular tab
set expandtab

"sets tab and shiftwidth to 2 spaces according to drupals coding standard
set tabstop=2 shiftwidth=2 softtabstop=2

"use the same indent from current line when starting a new line
set autoindent

"use smart autoindenting. Used when line ends with {
set smartindent

" ensure that drupal extensions are read as php files.
augroup drupal
  autocmd BufRead,BufNewFile *.module set filetype=php.drupal
  autocmd BufRead,BufNewFile *.theme set filetype=php.drupal
  autocmd BufRead,BufNewFile *.inc set filetype=php.drupal
  autocmd BufRead,BufNewFile *.install set filetype=php.drupal
  autocmd BufRead,BufNewFile *.engine set filetype=php.drupal
  autocmd BufRead,BufNewFile *.profile set filetype=php.drupal
  autocmd BufRead,BufNewFile *.test set filetype=php.drupal
augroup END

" uncomment to highlight code lines and comments > 80 characters
" highlight OverLength ctermbg=red ctermfg=white guibg=red guifg=white
" match OverLength '\%81v.*'

"===============================
" PHP SETTINGS
"===============================

" autocompletion for php functions
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" for highlighting parent error ] or )
" let php_parent_error_close = 1  


"=============================
" GLOBAL SETTINGS
"=============================

" syntax coloration
syntax on
" encoding
set encoding=utf-8
" non-compatible avec vi. Permet de pousser plus loin la configuration
set nocompatible
" on s'assure d'avoir le droit à au moins 256 couleurs
set t_Co=256
" default colorsheme
colorscheme xoria256


"================================
" feel more cumfortable
"================================

" spaces for indention
filetype indent plugin on

" montrer les numéros de lignes
set nu

" illuminer les résultat de recherche
set hlsearch

"sets vim in pastemode and you avoid unwanted sideeffects
set paste

" Toujours laisser des lignes visibles (içi 5) au dessus/en dessous du curseur quand on
" atteint le début ou la fin de l'écran :
set scrolloff=5

" boucler sur le fichier pour naviguer dans les résultat de la recherche
set wrapscan
