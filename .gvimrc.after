colorscheme twilight
" Set highlighted color for locatino window
hi QuickFixLine term=reverse ctermfg=0 ctermbg=14 gui=bold guifg=#606000 guibg=#c0c000

set guioptions-=T  "remove toolbar

if has("gui_gtk2")
  " mswin has mappings for cut/copy/paste
  " http://superuser.com/questions/10588/how-to-make-cut-copy-paste-in-gvim-on-ubuntu-work-with-ctrlx-ctrlc-ctrlv
  source $VIMRUNTIME/mswin.vim
  behave mswin
  " Paste will go into append mode :)
  set guifont=Mono\ 9
  set lines=75 columns=180
  set guioptions-=m  "remove menu bar

  " Uses ack-grep instead of ack package
  let g:ackprg="ack-grep -H --nocolor --nogroup --column"
elseif has('mac')
  " http://springest.io/vim-font-size-depending-screen-size
  "
  " Set font size based on screen size. When vertical height is greater than 900
  " (i.e. an external monitor is attached on 13" or smaller MacBooks), use 18, else use 16.
  if system("osascript -e 'tell application \"Finder\" to get bounds of window of desktop' | cut -d ' ' -f 4") >= 900
    set gfn=Menlo:h12
  else
    set gfn=Menlo:h10
  endif
elseif has("gui_running")
  set gfn=Menlo:h10
endif

" Adds keyboard commands ot copy the current file
" From http://stackoverflow.com/a/17096082/575101
" copy current file name (relative/absolute) to system clipboard
if has("mac") || has("gui_macvim") || has("gui_mac")
  " relative path  (src/foo.txt)
  nnoremap <leader>cf :let @*=expand("%")<CR>

  " absolute path  (/something/src/foo.txt)
  nnoremap <leader>cF :let @*=expand("%:p")<CR>

  " filename       (foo.txt)
  nnoremap <leader>ct :let @*=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <leader>ch :let @*=expand("%:p:h")<CR>


  macm File.Open\ Tab\.\.\.<Tab>:tabnew		key=<nop>
  macm File.New\ Tab key=<D-T>
  macm File.Print key=<nop>
  macm Tools.Make<Tab>:make key=<nop>
  macm Edit.Find.Find\.\.\.			key=<nop>
endif

" copy current file name (relative/absolute) to system clipboard (Linux version)
if has("gui_gtk") || has("gui_gtk2") || has("gui_gnome") || has("unix")
  " relative path (src/foo.txt)
  nnoremap <leader>cf :let @+=expand("%")<CR>

  " absolute path (/something/src/foo.txt)
  nnoremap <leader>cF :let @+=expand("%:p")<CR>

  " filename (foo.txt)
  nnoremap <leader>ct :let @+=expand("%:t")<CR>

  " directory name (/something/src)
  nnoremap <leader>ch :let @+=expand("%:p:h")<CR>
endif

" Disables bell sound e.g. when pressing esc multiple times
set visualbell t_vb=
