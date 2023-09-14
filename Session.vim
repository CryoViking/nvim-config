let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/.config/nvim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
let s:shortmess_save = &shortmess
if &shortmess =~ 'A'
  set shortmess=aoOA
else
  set shortmess=aoO
endif
badd +1 lua/plugins/themes/cryoviking.nvim/lua/cryoviking/palette.lua
badd +325 lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua
badd +14 lua/plugins/lsp_config.lua
badd +1 ~/.config/nvim
badd +46 lua/plugins/themes/cryoviking.nvim/lua/cryoviking/init.lua
badd +28 lua/plugins/themes/cryoviking.nvim/lua/cryoviking/lightline.lua
badd +12 lua/plugins/theme.lua
badd +1 lua/plugins/themes/cryoviking.nvim/colors/cryoviking.lua
argglobal
%argdel
$argadd ~/.config/nvim
edit lua/plugins/themes/cryoviking.nvim/lua/cryoviking/palette.lua
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
wincmd =
argglobal
balt lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua
let s:l = 5 - ((3 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 5
normal! 0
lcd ~/.config/nvim
wincmd w
argglobal
if bufexists(fnamemodify("~/.config/nvim/lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua", ":p")) | buffer ~/.config/nvim/lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua | else | edit ~/.config/nvim/lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua | endif
if &buftype ==# 'terminal'
  silent file ~/.config/nvim/lua/plugins/themes/cryoviking.nvim/lua/cryoviking/groups.lua
endif
balt ~/.config/nvim/lua/plugins/themes/cryoviking.nvim/lua/cryoviking/palette.lua
let s:l = 325 - ((29 * winheight(0) + 29) / 58)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 325
normal! 052|
lcd ~/.config/nvim
wincmd w
2wincmd w
wincmd =
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0 && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20
let &shortmess = s:shortmess_save
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
set hlsearch
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
