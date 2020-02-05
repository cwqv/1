" =====================================
" Install Plugins
" =====================================

call plug#begin('c:\users\dell\AppData\Local\nvim\plugged')

" Pretty Dress
Plug 'tomasr/molokai'
Plug 'bling/vim-airline'
Plug 'bling/vim-bufferline'

" Files
Plug 'mbbill/undotree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Auto Complete
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}


" Python, Go and Rust
Plug 'Yggdroot/indentLine'
Plug 'scrooloose/nerdcommenter' " in <space>cn to comment a line
Plug 'majutsushi/tagbar'
Plug 'luochen1990/rainbow'   "彩色括号
"Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'go'] }   "折叠
Plug 'fatih/vim-go' , { 'for': 'go', 'tag': '*' }
"Plug 'rust-lang/rust.vim', { 'for' :'rust' }
Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() },
			\'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'theniceboy/bullets.vim'

" For general writing
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

call plug#end()


" =====================================
" Neovim Genreal
" =====================================
cd c:\cwq "for default folder
set mouse=a

set clipboard=unnamed
set selection=exclusive
set selectmode=mouse,key

let &t_ut=''
set autochdir
set noswapfile

set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936
set encoding=utf-8
set tenc=utf-8

"set nocompatible for neovim always noexpandtab
syntax on
syntax enable
filetype on
filetype plugin on


" =====================================
" Neovim behavior
" =====================================
set number
set cursorline
set noexpandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent
set list
set listchars=tab:\|\ ,trail:?
set scrolloff=4
set ttimeoutlen=0
set notimeout
set viewoptions=cursor,folds,slash,unix
set wrap
set whichwrap=b,s,<,>,[,]
set tw=0
set indentexpr=
set foldmethod=indent
set foldlevel=99
set foldenable
set formatoptions-=tc
set splitright
set splitbelow
set noshowmode
set showcmd
set wildmenu
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set visualbell
set backupdir=c:\users\dell\AppData\Local\nvim-data\backup
set directory=c:\users\dell\AppData\Local\nvim-data\backup
if has('persistent_undo')
	set undofile
	set undodir=c:\users\dell\AppData\Local\nvim-data\undo
endif
set colorcolumn=80
set updatetime=1000
set cmdheight=1
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
set completeopt=longest,noinsert,menuone,noselect,preview

" =====================================
" Terminal Behaviors
" =====================================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>
let g:terminal_color_0  = '#000000'
let g:terminal_color_1  = '#FF5555'
let g:terminal_color_2  = '#50FA7B'
let g:merminal_color_3  = '#F1FA8C'
let g:terminal_color_4  = '#BD93F9'
let g:terminal_color_5  = '#FF79C6'
let g:terminal_color_6  = '#8BE9FD'
let g:terminal_color_7  = '#BFBFBF'
let g:terminal_color_8  = '#4D4D4D'
let g:terminal_color_9  = '#FF6E67'
let g:terminal_color_10 = '#5AF78E'
let g:terminal_color_11 = '#F4F99D'
let g:terminal_color_12 = '#CAA9FA'
let g:terminal_color_13 = '#FF92D0'
let g:terminal_color_14 = '#9AEDFE'


" =====================================
" Basic Mappings
" =====================================
let mapleader=" "
noremap ; :
noremap <C-;> q:i<ESC>
noremap s <nop>nmap <silent> <Leader>e :Defx <cr>

" Save & quit
noremap <Leader>q :q<CR><CR>
noremap <Leader>Q :q!<CR>
noremap <C-q> :qa<CR>
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" Open the init.vim file anytime
noremap <Leader>v :e c:\users\dell\AppData\Local\nvim\init.vim<CR>
noremap <Leader>s :source C:\users\dell\AppData\Local\nvim\init.vim<cr>
nmap <Leader>a :e c:\cwq\.code\key.ahk<cr>

" make Y to copy till the end of the line
nnoremap Y y$

" Copy to system clipboard
vnoremap Y "+y

" Search
noremap ss :nohlsearch<CR>

" Space to Tab
nnoremap <LEADER>ss :%s/    /\t/g
vnoremap <LEADER>ss :s/    /\t/g

" Folding
noremap <silent> <LEADER>o za

" Open up merminal for actions 
noremap <Leader>tt :vsp<CR>:term<CR>
noremap <Leader>tc :term lazygit<CR>


" =====================================
" Cursor Movement
" =====================================
noremap <silent> <c-k> 5k
noremap <silent> <c-j> 5j
noremap <silent> <c-h> 0
noremap <silent> <c-l> $
noremap W 5w
noremap B 5b

" =====================================
" Command Mode Cursor Movement
" =====================================
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-k> <Up>
cnoremap <C-j> <Down>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
cnoremap <M-h> <S-Left>
cnoremap <M-l> <S-Right>

" =====================================
" Window management
" =====================================
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>w <C-w>w
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sk :set nosplitbelow<CR>:new<CR>:set splitbelow<CR>
noremap sj :set splitbelow<CR>:new<CR>
noremap sk :set nosplitright<CR>:new<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vne<CR>

" Resize splits with arrow keys
noremap <C-up> :res +5<CR>
noremap <C-down> :res -5<CR>
noremap <C-left> :vertical resize-5<CR>
noremap <C-right> :vertical resize+5<CR>

" Place the two screens up and down
noremap sb <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

" Rotate screens
noremap srb <C-w>b<C-w>K
noremap srv <C-w>b<C-w>H

" Press <SPACE> + q to close the window below the current window
noremap <S-q> <C-w>j:q<CR>

" =====================================
" Tab management
" =====================================
" Create a new tab with tu
noremap tn :tabe<CR>
" Move around tabs with tn and ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

" =====================================
" Buffer management
" =====================================
noremap bb :bp<CR>
noremap bn :bn<CR>

" =====================================
" Markdown Settings
" =====================================
" Snippets
"source ~/.config/nvim/md-snippets.vim
" auto spell
"autocmd BufRead,BufNewFile *.md setlocal spell



" =====================================
" Others
" =====================================

" Spelling Check with <space>sc
noremap <LEADER>sc :set spell!<CR>

" Press ` to change case (instead of ~)
noremap ` ~

" Auto change directory to current dir
autocmd BufEnter * silent! lcd %:p:h

" find and replace
noremap \s :%s//g<left><left>

" =====================================
" Compile function
" =====================================
inoremap <F5> <Esc>:call CompileRunGcc()<CR>
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
	exec "w"
	if &filetype == 'python'
		set splitbelow
		:sp
		:term python3 %
	elseif &filetype == 'html'
		silent! exec "!".g:mkdp_browser." % &"
	elseif &filetype == 'markdown'
		exec "MarkdownPreview"
	elseif &filetype == 'tex'
		silent! exec "VimtexStop"
		silent! exec "VimtexCompile"
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run %
	elseif &filetype == 'rust'
		set splitbelow
		:sp
		:! cargo build
		:term cargo run
	endif
endfunc

"===================== Start of Plugin Settings ===============================



" =============================================================================
" molokai, airline, EasyAlign etc
" =============================================================================
set termguicolors	" enable true colors support
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
color molokai
set guifont=Jetbrains\ Mono:h14:cANSI
hi NonText ctermfg=gray guifg=grey10

" 总是显示状态栏 
let laststatus = 2
let g:airline_powerline_fonts = 1   " 使用powerline打过补丁的字体

"vim-easy-align
"xmap ga <Plug>(EasyAlign)
"nmap ga <Plug>(EasyAlign)

" coc-translator
nmap ts <Plug>(coc-translator-p)

" vim-table-mode
noremap tm :TableModeToggle<CR>
let g:table_mode_cell_text_object_i_map = 'k<Bar>'

" rainbow
let g:rainbow_active = 1

" Python-syntax
let g:python_highlight_all = 1

" =============================================================================
" MarkdownPreview
" =============================================================================
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
			\ 'mkit': {},
			\ 'katex': {},
			\ 'uml': {},
			\ 'maid': {},
			\ 'disable_sync_scroll': 0,
			\ 'sync_scroll_type': 'middle',
			\ 'hide_yaml_meta': 1
			\ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" =============================================================================
" tagbar
" =============================================================================
"tagbar
"F9触发，设置宽度为30
let g:tagbar_width = 30
nmap <F9> :TagbarToggle<CR>
"开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_autopreview = 1
"关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0

command! -bang -nargs=* MRU call fzf#vim#history(fzf#vim#with_preview())

command! -bang BTags
			\ call fzf#vim#buffer_tags('', {
			\     'down': '40%',
			\     'options': '--with-nth 1
			\                 --reverse
			\                 --prompt "> "
			\                 --preview-window="70%"
			\                 --preview "
			\                     tail -n +\$(echo {3} | tr -d \";\\\"\") {2} |
			\                     head -n 16"'
			\ })


" ===
" === Undotree
" ===
noremap L :UndotreeToggle<CR>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nmap <buffer> u <plug>UndotreeNextState
	nmap <buffer> e <plug>UndotreePreviousState
	nmap <buffer> U 5<plug>UndotreeNextState
	nmap <buffer> E 5<plug>UndotreePreviousState
endfunc

" === Ultisnips
" ===
"let g:tex_flavor = "latex"
"inoremap <c-n> <nop>
"let g:UltiSnipsExpandTrigger="<c-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-e>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"
"let g:UltiSnipsSnippetDirectories = [$HOME.'/.config/nvim/Ultisnips/', 'UltiSnips']
"silent! au BufEnter,BufRead,BufNewFile * silent! unmap <c-r>


" ===
" === vimtex
" ===
"let g:vimtex_view_method = ''
"let g:vimtex_view_general_viewer = 'llpp'
"let g:vimtex_mappings_enabled = 0
"let g:vimtex_text_obj_enabled = 0
"let g:vimtex_motion_enabled = 0



" =============================================================================
" vim-go
" =============================================================================
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0

" =============================================================================
" FZF
" =============================================================================
nnoremap <silent> <Leader>f :Files<CR>
"<Leader>b切换Buffer中的文件
nnoremap <silent> <Leader>b :Buffers<CR>
"<Leader>p在当前所有加载的Buffer中搜索包含目标词的所有行，:BLines只在当前Buffer中搜索
nnoremap <silent> <Leader>p :Lines<CR>
"<Leader>h在Vim打开的历史文件中搜索，相当于是在MRU中搜索，:History：命令历史查找
nnoremap <silent> <Leader>h :History<CR>
"调用Rg进行搜索，包含隐藏文件
"command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case --hidden '.shellescape(<q-args>), 1,
  \   <bang>0 ? fzf#vim#with_preview('up:60%')
  \           : fzf#vim#with_preview('right:50%:hidden', '?'),
  \   <bang>0)



" =============================================================================
" Coc
" =============================================================================
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes
let g:coc_global_extensions = ['coc-python','coc-yank', 'coc-pyright']
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>fm  <Plug>(coc-format-selected)
nmap <leader>fm  <Plug>(coc-format-selected)

augroup mygroup
	autocmd!
	" Setup formatexpr specified filetype(s).
	autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
	" Update signature help on jump placeholder
	autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}


" Using CocList
" Show all diagnostics
nnoremap <silent> <Leader>d  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <Leader>ex  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>r  :<C-u>CocListResume<CR>


" ===================== End of Plugin Settings =====================


