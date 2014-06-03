" Author Hudson Gevaert

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 		" get out of horrible vi-compatible mode
set noswapfile			" Don't bother with swap file
filetype on 			" detect the type of file
filetype indent on		" indent by default
set history=100 		" How many lines of history to remember
set cf 					" enable error files and error jumping
set clipboard+=unnamed 	" turns out I do like is sharing windows clipboard
set ffs=unix,dos,mac 	" support all three, in this order
filetype plugin on 		" load filetype plugins
set viminfo+=! 			" make sure it can save viminfo
set isk+=_,$,@,%,#,- 	" none of these should be word dividers, so make them not be

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colours / Theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on				" syntax highlighting on
:colors ir_black		" the color scheme

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files / Backups
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set backup 							" make backup file
set backupdir=.\\.backup,.,c:\\tmp
set directory=.,.\\.backup,c:\\tmp 
  
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM UI
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmenu 							" turn on wild menu
set ruler 								" Always show current positions along the bottom 
set cmdheight=2 						" the command bar is 2 high
set number 								" turn on line numbers
set backspace=2 						" make backspace work normal
set whichwrap+=<,>,h,l  				" backspace and cursor keys wrap to
set mouse=a 							" use mouse everywhere
set shortmess=atI 						" shortens messages to avoid 'press a key' prompt 
set report=0 							" tell us when anything is changed via :...
set noerrorbells 						" don't make noise
" set cursorcolumn 						" Highlights column
set fillchars=vert:\ ,stl:\ ,stlnc:\	" make the splitters between windows be blank
:set viminfo^=%
au GUIEnter * simalt ~x					" maximize window on start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual Cues
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set showmatch 						" show matching brackets
set mat=2 							" how many tenths of a second to blink matching brackets for
set nohlsearch 						" do not highlight searched for phrases
set incsearch 						" BUT do highlight as you type you search phrase
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 	" what to show when I hit :set list
set novisualbell 					" don't blink
set noerrorbells 					" no noises
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [POS=%04l,%04v][%p%%]
set laststatus=0 					" always show the status line

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting / Layout
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ai 					" autoindent
set si 					" smartindent 
set cindent 			" do c-style indenting
set nowrap				" do not wrap lines  

" Tab settings
autocmd FileType ruby set tabstop=2|set shiftwidth=2|set softtabstop=2 |set expandtab
autocmd FileType *.haml set tabstop=2|set shiftwidth=2|set softtabstop=2 |set expandtab
autocmd FileType *.sass set tabstop=2|set shiftwidth=2|set softtabstop=2 |set expandtab
autocmd FileType *.scss set tabstop=2|set shiftwidth=2|set softtabstop=2 |set expandtab
autocmd FileType *.yml set tabstop=2|set shiftwidth=2|set softtabstop=2 |set expandtab

set tabstop=4			" number of default spaces per tab
set shiftwidth=4		" when shifting code, set the spaces << or >>
set softtabstop=4 		" number of spaces in tab when editing
set expandtab			" use spaces instead of tab characters

set smarttab			" use tabs at the start of a line, spaces elsewhere


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Explore commands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:explVertical=1    " open vertical split winow
"let g:explSplitRight=1  " Put new window to the right of the explorer
"let g:explStartRight=0  " new windows go to right of explorer window

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CList/ Taglist Tags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd = 'C:\Tools\Vim\ctags.exe' 	" Location of ctags
let Tlist_Sort_Type = "name" 									" order by 
"let Tlist_Use_Right_Window = 1 								" split to the right side of the screen
let Tlist_Compart_Format = 1 									" show small menu
" let Tlist_Exist_OnlyWindow = 1 								" if you are the last, kill yourself
let Tlist_File_Fold_Auto_Close = 0 								" Do not close tags for other files
" let Tlist_Enable_Fold_Column = 0 								" Do not show folding tree
nnoremap <silent> <F8> :TlistToggle<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Mini Buffer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
let g:miniBufExplTabWrap = 1

let g:miniBufExplSplitBelow=1	" Display panel at bottom of screen
let g:miniBufExplVSplit = 20

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERD TREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader><Leader> :NERDTreeToggle X:<cr>
let NERDTreeMapActivateNode='<Space>'
let NERDTreeSplitVertical=1
let NERDTreeWinSize=28
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\CVS$']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RAILS PLUGIN - DEPRECATED
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if !empty(matchstr($MY_RUBY_HOME, 'jruby'))
""  let g:ruby_path = join(split(glob($MY_RUBY_HOME.'/lib/ruby/*.*')."\n".glob($MY_RUBY_HOME.'/lib/rubysite_ruby/*'),"\n"),',')
"endif
"let g:ruby_path = "C:\Ruby193\bin"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SUPERTAB
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ruby
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ruby-DOC && JQUERY Doc
" http://lucapette.com/vim/rails/vim-for-rails-developers-browse-ruby-rspec-and-rails-docs-quickly/
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ruby_doc_command='"c:\Program Files\Mozilla Firefox\firefox.exe"'
"let g:jquery_doc_command='"c:\Program Files\Mozilla Firefox\firefox.exe"'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Perl
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let perl_extended_vars=1 " highlight advanced perl vars inside strings


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufEnter * :syntax sync fromstart " ensure every file does syntax highlighting (full)
au BufNewFile,BufRead *.tpl :set ft=html " all my .tpl files ARE html
au BufNewFile,BufRead *.hta :set ft=html " all my .tpl files ARE html
au BufNewFile,BufRead *.json :set ft=html " all my .tpl files ARE html
:au Filetype rhtml,html,xml,xsl,json source C:\\Program Files\\Vim\\vim71\\plugin\\closetag.vim	"Close tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <Leader>e :Explore<cr>
map <Leader>s :Sexplore<cr>

" pressing < or > will let you indent/unident selected lines
vnoremap < <gv
vnoremap > >gv

" Make tab in v mode work like I think it should (keep highlighting):
vmap <tab> >gv
vmap <s-tab> <gv

" Select all.
map <c-a> ggVG

" Undo in insert mode.
imap <c-z> <c-o>u

"Completion
imap <c-a> <c-X><c-N>

" Using Enter and shift enter to add new lines without entering insert mode
map <S-Enter> O<Esc>
map <CR> o<Esc>

" Map PageUp and PageDown keys to do that
map <silent> <PageUp> 1000<C-U>
map <silent> <PageDown> 1000<C-D>
imap <silent> <PageUp> <C-O>1000<C-U>
imap <silent> <PageDown> <C-O>1000<C-D>

" Map key to inserting a single character
noremap ; i<Space><Esc>r
:map <C-x> ylpr
