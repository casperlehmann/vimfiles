set nocompatible
    " be iMproved, required
    " https://github.com/VundleVim/Vundle.vim#quick-start
    " See :help 'compatible' for the full story
    " http://superuser.com/questions/543317/what-is-compatible-mode-in-vim


" ########################################
" #### Vundle
" ####################
    " https://realpython.com/blog/python/vim-and-python-a-match-made-in-
    "   heaven/#.Vi9-CN7uzXY.reddit
filetype off                  " required

    " Set the runtimepath (rtp) to include Vundle and initialize.
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/.vundle')

    " Add all your plugins here (note older versions of Vundle used Bundle 
    " instead of Plugin)
    " Don’t forget to install the plugins:
    "   :BundleInstall.
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'

    " Migration from pathogen
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-dispatch'
Plugin 'altercation/vim-colors-solarized'

    " All of your Plugins must be added before the following line
call vundle#end()


" ########################################
" #### Pathogen
" ####################
" https://github.com/tpope/vim-pathogen
"execute pathogen#infect()




" ########################################
" #### Settings
" ####################
filetype plugin indent on
syntax on
set encoding=utf-8
set splitbelow
set splitright
    " Line Numbering
set nu




" ########################################
" #### Highlighting
" ####################
    " 80 char limit character highlighing
    " http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
"set highlight
"highlight OverLength ctermbg=red ctermfg=red guibg=#592929
"match OverLength /\%81v.\+/
"highlight OverLength ctermbg=red ctermfg=red guibg=#592929

    " 80 char limit color column
    " http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
set colorcolumn=80

    " http://www.cybercity.com/wiki/Highlighting_all_search_pattern_matches
set hlsearch

    " Press Space to turn off highlighting and clear any message already 
    " displayed.
    " http://vim.wikia.com/wiki/Highlight_all_search_pattern_matches
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

    " https://www.cs.oberlin.edu/~kuperman/help/vim/indenting.html
set autoindent
set smartindent

    " http://www.serverwatch.com/tutorials/article.php/3845506/Automatic-
    "     Indenting-With-Vim.htm
filetype indent on

    " Show a visual line under the cursor's current line 
    " http://www.fullstackpython.com/vim.html
set cursorline
    " Show the matching part of the pair for [] {} and ()
"set showmatch

    " http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
    " https://wiki.python.org/moin/Vim
set modeline
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
    " Enable all Python syntax highlighting features
let python_highlight_all = 1

    " http://www.vim.org/scripts/script.php?script_id=974
"Vim Python indent





" ########################################
" #### Layout
" ####################
    " https://github.com/altercation/vim-colors-solarized
"syntax enable
"set background=dark
"colorscheme solarized






" ########################################
" #### Navigation
" ####################
    " Split navigations: ctrl+hjkl
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" ########################################
" #### Get of my lawn, Fairy boy.
" ####################
    " The most effective way of learning correct Vim navigation.

    " Get off my lawn
    " https://github.com/jridgewell/dotvim/blob/master/home/.vim/plugin/
    "   settings/
    " vim-getoffmylawn.vim
"nnoremap <Left>     :call system('say Hey, listen &')<CR>:echoerr "Use h"<CR>
"nnoremap <Right>    :call system('say Watch out! &')<CR>:echoerr "Use l"<CR>
"nnoremap <Up>       :call system('say Hey! &')<CR>:echoerr "Use k"<CR>
"nnoremap <Down>     :call system('say Look! &')<CR>:echoerr "Use j"<CR>
nnoremap <Left>     :call system('afplay /Users/Lasper/navi/navi_hello.mp3 &')<CR>:echoerr "Use h"<CR>
nnoremap <Right>    :call system('afplay /Users/Lasper/navi/navi_look.mp3 &')<CR>:echoerr "Use l"<CR>
nnoremap <Up>       :call system('afplay /Users/Lasper/navi/navi_hey_listen.mp3 &')<CR>:echoerr "Use k"<CR>
nnoremap <Down>     :call system('afplay /Users/Lasper/navi/navi_watch_out.mp3 &')<CR>:echoerr "Use j"<CR>

" Insert Mode
inoremap <Left>     <Esc>:echoerr "Use h"<CR>i%<nop>
inoremap <Right>    <Esc>:echoerr "Use l"<CR>i
inoremap <Up>       <Esc>:echoerr "Use k"<CR>i 
inoremap <Down>     <Esc>:echoerr "Use j"<CR>i





" ########################################
" #### Disable escape key. Use jk instead.
" ####################
    " http://learnvimscriptthehardway.stevelosh.com/chapters/10.html
:inoremap jk <esc>
:inoremap <esc> <nop>




" ########################################
" #### Folding
" ####################
set foldmethod=indent
set foldlevel=99
let g:SimpylFold_docstring_preview=1




" ########################################
" #### File specific settings
" ####################
" au BufNewFile,BufRead *.py
    "   \ set tabstop=4
    "   \ set softtabstop=4
    "   \ set shiftwidth=4
    "   \ set textwidth=79
    "   \ set expandtab
    "   \ set autoindent
    "   \ set fileformat=unix
" 
" au BufNewFile,BufRead *.js, *.html, *.css
    "   \ set tabstop=2
    "   \ set softtabstop=2
    "   \ set shiftwidth=2





" ########################################
" #### No clue
" ####################
" ctrl p:
" https://www.youtube.com/watch?v=9XrHk3xjYsw
" ctrl t for open in tab
" ctrl b for open in buffer
"
"


" ########################################
" #### My shortcuts
" ####################
    " press \, to insert a newline following next comma.
nnoremap <leader>, /,<CR>wi<CR><Esc>

    " \. to insert a newline following next period.
nnoremap <leader>m /\.<CR>wi<CR><Esc>

    " \p to latex compile main.tex and open main.pdf.
nnoremap <leader>p :w<CR>:! xelatex main; open main.pdf<CR><CR>

    " \o to recompile biber bibliography.
nnoremap <leader>o :w<CR>:! biber main<CR><CR>




" ########################################
" #### Buffers
" ####################
" http://vim.wikia.com/wiki/Easier_buffer_switching
" leader-b to access buffer list.
nnoremap <leader>b :buffers<CR>:buffer<Space>
" tab completion menu (disabled tab-completion, since it removes tab function. fix: http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
" set wildchar=<Tab> wildmenu wildmode=full
" <C-a> to autocomplete command with all possible completions.
" :bd cont<C-a> " deletes all buffers from content-directory.
" :bd cont<Tab> " deletes a single tab, which can be specified by cycling through suggestions.
" http://stackoverflow.com/questions/3155461/how-to-delete-multiple-buffers-in-vim








" ########################################
" #### Speak
" ####################
vnoremap <silent><leader>[ "xy:call system('say -v Alex -r 500 '.shellescape(@x).' &')<CR>
vnoremap <silent><leader>] "xy:call system('say -v Magnus -r 400 '.shellescape(@x).' &')<CR>
vnoremap <silent><leader>' "xy:call system('say -v Ting '.shellescape(@x).' &')<CR>

nnoremap <silent><leader>[ V"xy:call system('say -v Alex -r 500 '.shellescape(@x).' &')<CR>
nnoremap <silent><leader>] V"xy:call system('say -v Magnus -r 400 '.shellescape(@x).' &')<CR>
nnoremap <silent><leader>' V"xy:call system('say -v Ting '.shellescape(@x).' &')<CR>
"nnoremap <silent><leader>] :call system('say '.shellescape(expand('<cword>')).' &')<CR>
"nnoremap <leader>[ V"xy:silent VimProcBang echo $(printf '%q' <c-r>x<cr>) > a.txt

    " http://www.reddit.com/r/vim/comments/2odq4l/osx_texttospeech_in_vim/
"vnoremap <leader>] "xy:silent w !say <c-r>x<cr>
"vnoremap <leader>[ "xy:silent VimProcBang say <c-r>x<cr>
"nnoremap <leader>] V"xy:silent w !say <c-r>x<cr>
"nnoremap <leader>[ V"xy:silent VimProcBang say <c-r>x<cr>
"nnoremap <leader>p V"xy:silent call system('say "didi" &')
"vnoremap <leader>p 
"xy:silent call system('say 
"asdfasdf" &')

    " https://developer.apple.com/library/mac/documentation/Darwin/Reference/
    "   ManPages/man1/say.1.html
    " -v voice (Alex, Magnus, Ting)
    " -r rate (in words per minute, max 720)







" ########################################
" #### Spelling and tab completion
" ####################
    " http://vim.wikia.com/wiki/Dictionary_completions
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete+=k

    " Use TAB to complete when typing words, else inserts TABs as usual.
    " Uses dictionary and source files to find matching words to complete.
    "     http://vim.wikia.com/wiki/Autocomplete_with_TAB_when_typing_words
    " What if Vim is wrong, and the word is correct? Use the zg command and Vim 
    " will add it to its dictionary. Simple as pie. You can also mark words as 
    " incorrect using zw.
"set spell spelllang=en_us

    " See help completion for source,
    " Note: usual completion is on <C-n> but more trouble to press all the time.
    " Never type the same word twice and maybe learn a new spellings!
    " Use the Linux dictionary when spelling is in doubt.
    " Window users can copy the file to their machine.
function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
        return "\<C-N>"
    else
        return "\<Tab>"
    endif
endfunction
inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>




" ########################################
" #### r to replace in visual mode
" ####################
    " Press r in visual mode to replace current highlighted text with previously 
    " yanked text.
    " http://stackoverflow.com/questions/54255/in-vim-is-there-a-way-to-delete-
    "     without-putting-text-in-the-register
vmap r "_dP






" ########################################
" #### NERDTree
" ####################
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
nnoremap <silent><leader>nt :NERDTreeToggle<CR>
    " http://superuser.com/questions/334307/automatically-close-nerdtree-when-
    "     opening-file
let NERDTreeQuitOnOpen = 1
    " Hide NERDTree when opening vim (feature of vim-nerdtree-tabs):
    " http://superuser.com/questions/491457/macvim-disable-nerdtree-for-new-
    "     and-single-files
let g:nerdtree_tabs_open_on_gui_startup = 0

