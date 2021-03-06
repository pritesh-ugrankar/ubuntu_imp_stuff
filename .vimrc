" → Preamble "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Personal VIMRC Settings. 
"Might not work on other versions.
"This works perfectly on linux.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Settings "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Setting options start.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make vim not compatible with Vi
set nocompatible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set pathogen
execute pathogen#infect()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set syntax on
syntax on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set filetype related settings
filetype plugin indent on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set Numbers
set nu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Let the find command start searching from the root directory from where it's
"invoked. You might have to turn off autochdir.
set path+=**
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Dont crazy indent copy-pasted stuff in terminal vim.
"Hit <F2> when in insert mode and paste. Hit <F2> again when done.
set pastetoggle=<F2>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Allow to open a new file even when I have unwritten changes in the existing file. 
"Also, undo buffers and marks are preserved while the buffer is open.
set hidden
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Ignore case while searching
set ignorecase
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Highlight as I type the words while searching.
set incsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"If I Search/SEArch/sEaRcH etc , then highlight Search/SEArch/sEaRcH 
"else highlight the word search without any regard for case.
set smartcase
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Make cursor jump to the matching bracket.
set showmatch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Autoindent
set autoindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Do smart autoindenting when starting a new line.
"Generally enabled after setting autoindent
set smartindent
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the line and column number of the cursor position, separated by a comma.
"Displays Top/Bot/File %
set ruler
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Disable beeping
set noerrorbells
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Flash the screen (visual bell)
set visualbell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the mode (Insert/Visual etc) in the lower left corner of the screen.
"set showmode 
"Set the following command in case you are using airline/lightline
set noshowmode 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show the command I am running.Use this if you are not using light/airline.
"set showcmd
"set noshowcmd if you are using lightline/airline etc.
set noshowcmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable mouse in "a"ll aspects
set mouse=a
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set history and undolevels
set history=1000
set undolevels=1000
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Tab completion cycle-through shows up in the statusline
set wildmenu
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set backspace to behave better
set backspace=2
set backspace=indent,eol,start
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set tab to move 2 spaces instead of 4.
set shiftwidth=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set backspace to move 4 spaces instead of 1 space.
set softtabstop=4
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Search Highlight
set hlsearch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Change the current working directory whenever you open a file, switch buffers,
"delete a buffer or open/close a window.
"Note: When this option is on some plugins MAY NOT work.
"set autochdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"important settings for line wrapping
"do not remove these two lines below.
set textwidth=170
set formatoptions-=t
"important settings for line wrapping
"do not remove these two lines above.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NEVER EVER SET nowrap. It will mess things up.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Damian Conway's clever hack. 
"Make the color column visible only when the line actually crosses over.
"Does not seem to work with Centos (7.2) vim.
set colorcolumn=0
call matchadd('ColorColumn', '\%81v', 100)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set encodings
set encoding=utf-8
set fileencodings=ucs-bom,utf-8,latin1
set termencoding=utf-8
scriptencoding utf-8
setglobal fileencoding=utf-8
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set fold method to "marker"
"Fold text between {{{ and }}}
set foldmethod=marker
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Set swapfiles directory
"set directory=%HOMEPATH%\\vim\\vimswap//
""Set backup files directory
"set backupdir=%HOMEPATH%\\vim\\vimbkup//
""Set undo directory
"set undodir=%HOMEPATH%\\vim\\vimundo//
""Note - You have to create the directories first. Vim wont create them for you.
"Otherwise, you can just set vim to NOT have any of these
set nobackup
set noswapfile
set noundofile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set command to clear registers.
function! ClearRegisters()
	let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
	let i=0
	while (i<strlen(regs))
		exec 'let @'.regs[i].'=""'
		let i=i+1
	endwhile
endfunction
command! ClearRegisters call ClearRegisters()
"end of function and the command to clear registers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set $ to appear when you type cw etc.
set cpoptions+=$
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Virtual Edit 
"set virtualedit=all 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set list chars
set listchars=tab:>>,eol:+,nbsp:&
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set terminal to 512 colours. Not helpful at all in Windows command console.
set t_Co=512
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set background 
set background=dark
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set colorscheme
colorscheme sonokai
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Extra options for colorscheme.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rehash256=1
set termguicolors
"NEVER EVER COMMENT set t_Co=256
set t_Co=256
"Enable the following ONLY for the Material color scheme.
"let g:material_terminal_italics = 1
"let g:material_theme_style = 'lighter'
"colorscheme material
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show statusline
set laststatus=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Always show bufferline.
set showtabline=2
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline options
set statusline=\ %F\ »\ %h%m%r\ %y%=\ %n\ »\ %-10.(%l,%c%V%)\ →\ %P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show a → when long lines wrap over
"set showbreak=→
set showbreak=↪
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Turn off menu bar
set guioptions-=m
"Turn off tool bar
set guioptions-=T
"Turn off right scrollbar
set guioptions-=r
"Turn off left scrollbar
set guioptions-=l
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set Leader Key:
let mapleader = ","
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"End of Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
 "→ Mappings "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mappings start here.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 
" Normal Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map '' to flip between the tabs
nnoremap '' <ESC>:tabnext<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map j so that it will move DOWN line by line for long wrapped lines.
nnoremap j gj
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map k so that it will move UP line by line for long wrapped lines.
nnoremap k gk
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Function Key Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Following key map shows/removes search match highlight when <F3> is pressed.
nnoremap <F3> :set hlsearch!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Edit vimrc
nnoremap <F4> :edit $MYVIMRC <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Source vimrc
nnoremap <F5> :source $MYVIMRC <CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set/unset list
nnoremap <F6> :set nolist!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set/unset cursor line highlighting
nnoremap <F7> :set nocul!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set mapping for NeoComplCache Enable
nnoremap <F8> :NeoCompleteEnable<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set scrollbind so that the split screens move up/down together
nnoremap <F9> :set scrollbind!<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch between the current and previous buffer easily
nnoremap <F10> <ESC>:b#<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map <F11> to Quit WITHOUT SAVING.  
nnoremap <F11> <ESC>:q!<CR> 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"Map space to za to better toggle folds: 
nnoremap <SPACE> za
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Painful setting forcing the use h j k l only in NORMAL Mode"
nnoremap <Down> <Nop>
nnoremap <Up> <Nop>
nnoremap <left> :bprevious<CR>
nnoremap <Right> :bnext<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Insert Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map jk to escape in Normal Mode and save the file contents as well
inoremap jk <esc>:w<CR><ESC>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Painful settings disabling the arrow keys in INSERT mode" 
inoremap <left> <Nop>
inoremap <Right> <Nop>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Visual Mode Mappings
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map ;; to escape in Visual Mode
vnoremap ;; <esc>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Note:- Do NOT EVER remove this mapping. This is awesome.
"Search visually selected text, forwards/backwards
vnoremap <silent> * :<C-U>
 		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
       		\gvy/<C-R><C-R>=substitute(
       		\escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
       		\gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
       		\let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
       		\gvy?<C-R><C-R>=substitute(
       		\escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
       		\gV:call setreg('"', old_reg, old_regtype)<CR>    
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"Select Mode Mappings 
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"The select mode allows users to select text using mouse, but if any key (e.g.jk
"mapped to <ESC>), is pressed, it will remove the selected text. The following
"mapping makes "jk" and ";" behave correctly. 
snoremap jk <ESC>:echo "Out of the [Select Mode]. Nothing was copied though."<CR>
snoremap ; <ESC>:echo "Out of the [Select Mode]. Nothing was copied though."<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"When you type : to escape the select mode your text gets replaced with
"the : sign. The following mapping fixes that.
snoremap : <ESC>:

" Mappings end here.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Aliases "{{{
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev recieve receive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev percieve perceive
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev investirage investigate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev clariion CLARiiON
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev vmax Symmetrix VMAX
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev serail Serial No:
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev navi naviseccli -h
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev syma symaccess -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symco symconfigure -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symd symdev -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symmd symmaskdb -sid
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev szmp show zone member pwwn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev sza show zoneset active \| inc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev sfdi show fcns database \| inc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
iabbrev symr symrdf -g 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" }}}
" → Plugins"{{{
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim-Go Plugin settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "gofmt"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim Tabnine:
"git clone --depth 1 https://github.com/zxqfl/tabnine-vim
"Add the following line.
set rtp+=~/.vim/bundle/tabnine-vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Syntastic 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1 
let g:syntastic_enable_perl_checker = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Perl settings start here. NOTE THE .PLENV. Change if not using .plenv
let g:syntastic_perl_interpreter = "/home/pritesh/.plenv/versions/5.32.0/bin/perl5.32.0"
let g:syntastic_perl_lib_path = ["~/.plenv/versions/5.32.0/lib/perl5/5.32.05.32.0/lib/perl5/5.32.0"]
let g:synstastic_perl_perlcritic_thres = 5
let g:syntastic_perl_checkers = ['perl', 'perlcritic']
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_aggregate_errors = 1
let g:syntastic_error_symbol = "E»"
let g:syntastic_warning_symbol = "W»"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim Lightline  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NOTE: DO NOT REMOVE the lines below(marked between the "++++++++++++".) 
"Lightline WILL NOT WORK without these.
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
"This is the MINIMAL version of let g:lightline. 
let g:lightline = {
      \ 'colorscheme': 'edge',
      \ }
"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"

let g:lightline.separator = { 'left': '◣', 'right': '◢' }
let g:lightline.subseparator = { 'left': '╲', 'right': '╱' }

augroup LightlineColorscheme
		  autocmd!
		  autocmd ColorScheme * call s:lightline_update()
		augroup END
		function! s:lightline_update()
		  if !exists('g:loaded_lightline')
		    return
		  endif
		  try
		    if g:colors_name =~# 'pencil\|lucius\|monokai\|molokai\|sonokai\|edge\|Tomorrow\|vadelma'

		      let g:lightline.colorscheme =
		            \ substitute(substitute(g:colors_name, '-', '_', 'g'), '256.*', '', '')
		      call lightline#init()
		      call lightline#colorscheme()
		      call lightline#update()
		    endif
		  catch
		  endtry
		endfunction" 

let g:lightline.tabline = {
		    \ 'left': [ [ 'tabs' ] ],
		    \ 'right': [ [ 'close' ] ] }

let g:lightline.tab = {
		    \ 'active': [ 'tabnum', 'filename', 'modified' ],
		    \ 'inactive': [ 'tabnum', 'filename', 'modified' ] }
let g:lightline.tabline.left = [ [ 'tabs' ] ]
	let g:lightline.component_expand = {
	    \ 'tabs': 'lightline#tabs' }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"If you are not sure, do not change the following settings.
"Else, the tabline (on the top) will get messed up.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline.tabline.separator = { 'left': '◣', 'right': '◢' }
let g:lightline.tabline.subseparator = { 'left': '╲', 'right': '╱' }
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}
let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""End of plugins. 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " }}}                                                                     
 "
