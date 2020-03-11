function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction

source ~/.vimrc.before
call SourceIfExists("~/.vimrc.before.private")

call plug#begin()

call SourceIfExists("~/.vimrc.plugs.private")

Plug '~/.janus/fzf.vim'
Plug '~/.janus/ack.vim'
Plug '~/.janus/ale'
Plug '~/.janus/coc.nvim'
Plug '~/.janus/vim-airline'
Plug '~/.janus/vim-dispatch'
Plug '~/.janus/nerdtree'

call plug#end()

source ~/.vimrc.after
call SourceIfExists("~/.vimrc.after.private")
