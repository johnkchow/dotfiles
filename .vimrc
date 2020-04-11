function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction


source ~/.vimrc.before
call SourceIfExists("~/.vimrc.before.private")

call plug#begin()

call SourceIfExists("~/.vimrc.plugs.private")

Plug '~/.janus/ack.vim'
Plug '~/.janus/ale'
Plug '~/.janus/coc.nvim'
Plug '~/.janus/fzf.vim'
Plug '~/.janus/nerdtree'
Plug '~/.janus/nerdcommenter'
Plug '~/.janus/rust.vim'
Plug '~/.janus/vim-airline'
Plug '~/.janus/vim-buffergator'
Plug '~/.janus/vim-dispatch'
Plug '~/.janus/vim-gitgutter'
Plug '~/.janus/vim-obsession'
Plug '~/.janus/vim-rhubarb'
Plug '~/.janus/vim-rustfmt'

call plug#end()

source ~/.vimrc.after
call SourceIfExists("~/.vimrc.after.private")
