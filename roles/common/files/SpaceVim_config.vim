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
  map <leader>sc :let @/=''<cr>

  " vim-autoformat
  noremap <leader>fmt :Neoformat<CR>

  " tagbar - show outline in current buffer
  nmap <leader>tb :TagbarToggle<CR>

  " VimFiler toggle
  map <silent> - :VimFiler -toggle<CR>

  " disable conceal for markdown file 
  nnoremap <leader>m - :set conceallevel=0<CR>

  " Retab  
  nnoremap <leader>rt - :set tabstop=2 shiftwidth=2 expandtab<CR>:retab<CR>

  " github
  let g:github_dashboard = { 'username': $GITHUB_ACCOUNT, 'password': $GITHUB_TOKEN }
  let g:gista#client#default_username = $GITHUB_ACCOUNT

  " snippet engine
  let g:spacevim_snippet_engine = "ultisnips"
  
  " Copy/Paste from clipboard
  noremap <Leader>y "*y
  noremap <Leader>p "*p
  noremap <Leader>Y "+y
  noremap <Leader>P "+p

endf
