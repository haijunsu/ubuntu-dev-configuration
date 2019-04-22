func! config#before() abort

  " replace preview
  set inccommand=nosplit

  " change the <leader> to ','
  let g:mapleader  = ','
  " after this line, when you using <leader> to defind key bindings
  " the leader is ,
  " for example:
  " this mapping means using `,w` to save current file.
  nnoremap <leader>w :w<cr>

  "  :W sudo saves the file
  "  (usefull for handling the permission-denied error)
  command W w !sudo tee % > /dev/null

  " Remove the Windows ^M - when the encodings gets messed up
  noremap <Leader>rm mmHmt:%s/<C-V><cr>//ge<cr>

  " delete trailing space
  nnoremap <Leader>dtw :%s/\s\+$//e<CR>:let @/=''<CR>

  " clear search result = <space>sc
  " map <leader>noh :let @/=''<cr>

  " vim-autoformat
  noremap <leader>fmt :Neoformat<CR>

  " tagbar - show outline in current buffer
  nmap <leader>tb :TagbarToggle<CR>

  " VimFiler toggle
  map <silent> - :VimFiler -toggle<CR>

  " disable conceal for markdown file
  nnoremap <leader>m - :set conceallevel=0<CR>
endf
