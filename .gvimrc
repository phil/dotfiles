set guioptions-=r 

" Map Cmd-T key to CommandT Plugin
if has("gui_macvim")
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
endif
