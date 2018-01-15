execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set colorcolumn:80,120
set tabstop=4 shiftwidth=4 expandtab
set backspace=indent,eol,start
set hidden
set shell=bash\ --login
set wildignore+=node_modules/**/*
set cscopequickfix=s-,c-,d-,i-,t-,e-
let mapleader="\\"

" Incremental search, case insensitive except when searching uppercase chars
set incsearch
set ignorecase
set smartcase

set cursorline
set cursorcolumn
nnoremap <Leader>g :set cursorline! cursorcolumn!<CR>

set statusline+=%#warningmsg#
set statusline+=%*

colorscheme gruvbox
set background=dark

let g:php_refactor_command='php /Users/giovanni/.vim/bundle/refactor.phar'
let g:dbgPavimPathMap = [['/home/giovanni/Code/site','/home/giovanni/moo'],]

if executable('ag')
      let g:ackprg = 'ag --vimgrep'
endif

map <Esc><Esc> :wa<CR>

nnoremap ;t :TestFile<Cr>
nnoremap go :CtrlP .<Cr>
nnoremap gb :CtrlPBuffer<Cr>
nnoremap gd :CtrlPFunky<Cr>
nnoremap cp :CtrlPCmdPalette<Cr>
nnoremap <Leader>bd :bd<CR>

" reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_user_command = 'ag %s -l --nocolor -g "" --ignore=node_modules'

"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#bufferline#overwrite_variables = 0
let g:airline_left_sep=''
let g:airline_right_sep=''

set laststatus=2

let g:dbgPavimPort = 9000
let g:dbgPavimBreakAtEntry = 0

fun! StripTrailingWhitespace()
    if exists('b:noStripWhitespace')
        return
    endif
        %s/\s\+$//e
endfun


" java support
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:neomake_mvncompile_maker = { 'exe': 'bash', 'args': ['~/tmux_mvn.sh', 'compile', '-Dcheckstyle.skip=true'] }
let g:neomake_mvntest_maker = { 'exe': 'bash', 'args': ['~/tmux_mvn.sh', 'test', '-Dcheckstyle.skip=true'] }
let g:neomake_gradlecompile_maker = { 'exe': './gradlew', 'args': ['build'] }
autocmd! BufWritePost *.java Neomake! gradlecompile

nmap <F4> <Plug>(JavaComplete-Imports-AddSmart)

"autocmd BufWritePre *.java :JCimportsRemoveUnused
" autocmd BufWritePost * execute 'silent !touch ~/.vimsave &'
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
autocmd FileType markdown let b:noStripWhitespace=1
autocmd BufWritePre * call StripTrailingWhitespace()

function!   QuickFixOpenAll()
    if empty(getqflist())
        return
    endif
    let s:prev_val = ""
    for d in getqflist()
        let s:curr_val = bufname(d.bufnr)
        if (s:curr_val != s:prev_val)
            exec "edit " . s:curr_val
        endif
        let s:prev_val = s:curr_val
    endfor
endfunction


" snake_case to CamelCase in the current line
function! CamelCaseLine()
    exec '.s /_\(.\)/\U\1\E/g'
endfunction

function! SnakeCaseLine()
    exec '.s /\([A-Z]\)/\1_\E/g'
endfunction

command! QuickFixOpenAll         call QuickFixOpenAll()
command! SnakeCaseLine           call SnakeCaseLine()
command! CamelCaseLine           call CamelCaseLine()
