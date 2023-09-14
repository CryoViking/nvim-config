" Vim syntax file
" Language:	MULI BASIC
" Maintainer:	Chris Brownlie <browch@muli.com.au>
" Last Change:	Tue Sep 14 14:24:23 BST 1999

" maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" A bunch of useful BASIC keywords
syn keyword basicStatement	BREAK break
syn keyword basicStatement	CALL call ABS abs
syn keyword basicStatement	CHAIN chain 
syn keyword basicStatement	CLOSE close 
syn keyword basicStatement	COPY copy
syn keyword basicStatement	COMMON common 
syn keyword basicStatement	CONTINUE continue
syn keyword basicStatement	CONSTANT constant DATA data
syn keyword basicStatement	DIM dim
syn keyword basicStatement	DO do
syn keyword basicStatement	END end End
syn keyword basicStatement	ERROR error EXIT exit
syn keyword basicStatement	FALSE false
syn keyword basicStatement	FOR for NEXT next
syn keyword basicStatement	FUN fun 
syn keyword basicStatement	GOSUB gosub GOTO goto
syn keyword basicStatement	IF if THEN then ELSE else FI fi ENDIF endif
syn keyword basicStatement	IOCTL ioctl Ioctl KEY key Key
syn keyword basicStatement	include INCLUDE tinclude TINCLUDE struct STRUCT
syn keyword basicStatement	LET let
syn keyword basicStatement	UNLOCK unlock
syn keyword basicStatement	ON on OR or
syn keyword basicStatement	ERROR error OPEN open 
syn keyword basicStatement	OPTION option BASED based
syn keyword basicStatement	PRINT print 
syn keyword basicStatement	READ read
syn keyword basicStatement	RESTORE restore
syn keyword basicStatement	RETURN return 
syn keyword basicStatement	SLEEP sleep
syn keyword basicStatement	STOP stop
syn keyword basicStatement	SUB sub 
syn keyword basicStatement	TRUE true 
syn keyword basicStatement	WHILE while WEND wend
syn keyword basicStatement	WRITE write
syn keyword basicStatement	STRIP$ strip$ LSTRIP$ lstrip$
syn match muliStatement "icadd"
syn match muliStatement "icattach_fun"
syn match muliStatement "icattach_window"
syn match muliStatement "iccall_fun"
syn match muliStatement "iccheck_index"
syn match muliStatement "icclear"
syn match muliStatement "icdelete_window"
syn match muliStatement "icdetach_fun"
syn match muliStatement "icget_anychange"
syn match muliStatement "icget_current_focus"
syn match muliStatement "icget_field_des_ptr"
syn match muliStatement "icget_field_enabled"
syn match muliStatement "icget_field_entry_ptr"
syn match muliStatement "icget_field_name"
syn match muliStatement "icget_field_prompt_no"
syn match muliStatement "icget_field_prompt_ptr"
syn match muliStatement "icget_field_tab_seq"
syn match muliStatement "icget_field_type"
syn match muliStatement "icget_field_valid"
syn match muliStatement "icget_index"
syn match muliStatement "icget_last_index"
syn match muliStatement "icget_modified"
syn match muliStatement "icget_program_mode"
syn match muliStatement "icinvoke_drill_post"
syn match muliStatement "icinvoke_fetch"
syn match muliStatement "icinvoke_win_post"
syn match muliStatement "icinvoke_zoom_post"
syn match muliStatement "icopy"
syn match muliStatement "icremove"
syn match muliStatement "icset_anychange"
syn match muliStatement "icset_content"
syn match muliStatement "icset_field_des_ptr"
syn match muliStatement "icset_field_enabled"
syn match muliStatement "icset_field_entry_ptr"
syn match muliStatement "icset_field_name"
syn match muliStatement "icset_field_prompt_no"
syn match muliStatement "icset_field_prompt_ptr"
syn match muliStatement "icset_field_tab_seq"
syn match muliStatement "icset_field_type"
syn match muliStatement "icset_field_valid"
syn match muliStatement "icset_focus"
syn match muliStatement "icset_modified"
syn match muliStatement "icset_program_mode"
syn match muliStatement "ictable_bgcolour_cell_default"
syn match muliStatement "ictable_bgcolour_display_table"
syn match muliStatement "ictable_bgcolour_row_default"
syn match muliStatement "ictable_bgcolour_set_cell"
syn match muliStatement "ictable_bgcolour_set_row"
syn match muliStatement "idisplay_cm"
syn match muliStatement "idoc_fetch"
syn match muliStatement "idoc_store"
syn match muliStatement "iexternal_program_start"
syn match muliStatement "ifexists"
syn match muliStatement "ifnescstr"
syn match muliStatement "ifncopyfilter"
syn match muliStatement "ifnpqfilter"
syn match muliStatement "ifsize"
syn match muliStatement "igbutton_add_label"
syn match muliStatement "igbutton_new"
syn match muliStatement "igbutton_new_empty"
syn match muliStatement "igcheckbox_get"
syn match muliStatement "igcheckbox_new"
syn match muliStatement "igcheckbox_set"
syn match muliStatement "igcombo_get"
syn match muliStatement "igcombo_new"
syn match muliStatement "igcombo_set"
syn match muliStatement "igcombo_text_add"
syn match muliStatement "igcombo_validate_set"
syn match muliStatement "igdate_new"
syn match muliStatement "igdelwin"
syn match muliStatement "igdialog"
syn match muliStatement "igdrill"
syn match muliStatement "igdrill_setup"
syn match muliStatement "igebox_add_label"
syn match muliStatement "igebox_new"
syn match muliStatement "igeometry_get_mae"
syn match muliStatement "igeometry_get_std"
syn match muliStatement "igeometry_put_mae"
syn match muliStatement "igeometry_put_std"
syn match muliStatement "igfilechooser_new"
syn match muliStatement "ighbox_new"
syn match muliStatement "ighbox_new_other"
syn match muliStatement "ighbox_pack"
syn match muliStatement "ighseparator_new"
syn match muliStatement "igimage_new"
syn match muliStatement "igimage_print"
syn match muliStatement "igimagechooser_copy"
syn match muliStatement "igimagechooser_new"
syn match muliStatement "igimagechooser_rotate"
syn match muliStatement "iginput_new"
syn match muliStatement "iglabel_new"
syn match muliStatement "iglabel_setup"
syn match muliStatement "iglabel_simple_new"
syn match muliStatement "igmenu_get"
syn match muliStatement "igmenu_refresh"
syn match muliStatement "igmenu_reset"
syn match muliStatement "igmenu_setup"
syn match muliStatement "igmenu_set_buttons"
syn match muliStatement "igmenu_set_shortcut"
syn match muliStatement "igmessage"
syn match muliStatement "ignote_collapse"
syn match muliStatement "ignote_delete_amount"
syn match muliStatement "ignote_delete_block_tag"
syn match muliStatement "ignote_expand"
syn match muliStatement "ignote_get"
syn match muliStatement "ignote_get_amount"
syn match muliStatement "ignote_get_block_tag"
syn match muliStatement "ignote_new"
syn match muliStatement "ignote_print"
syn match muliStatement "ignote_print_amount"
syn match muliStatement "ignote_print_block_tag"
syn match muliStatement "igprint"
syn match muliStatement "igprint_title"
syn match muliStatement "igprint_not_escaped"
syn match muliStatement "igprogress_create"
syn match muliStatement "igprogress_destroy"
syn match muliStatement "igprogress_is_cancelled"
syn match muliStatement "igprogress_update"
syn match muliStatement "igradio_new"
syn match muliStatement "igscrollable_new"
syn match muliStatement "igsize_group_new"
syn match muliStatement "igsize_group_add"
syn match muliStatement "igsoftkey_box"
syn match muliStatement "igtable_add_row"
syn match muliStatement "igtable_attach"
syn match muliStatement "igtable_delete_row"
syn match muliStatement "igtable_get_cell"
syn match muliStatement "igtable_new"
syn match muliStatement "igtable_unattached"
syn match muliStatement "igtext_new"
syn match muliStatement "igtk_main"
syn match muliStatement "igtk_main_iteration"
syn match muliStatement "igtoggle_new"
syn match muliStatement "igtooltip_set"
syn match muliStatement "igvbox_new"
syn match muliStatement "igvseparator_new"
syn match muliStatement "igwget_parent"
syn match muliStatement "igwhide"
syn match muliStatement "igwidget_set_border"
syn match muliStatement "igwidget_set_name"
syn match muliStatement "igwindow_move"
syn match muliStatement "igwin_new"
syn match muliStatement "igwshow"
syn match muliStatement "igwsimpleshow"
syn match muliStatement "igzoom_reset"
syn match muliStatement "igzoom_setup"
syn match muliStatement "iinsert_oo_add_exclude"
syn match muliStatement "iinsert_oo_add_graphic"
syn match muliStatement "iinsert_oo_add_money"
syn match muliStatement "iinsert_oo_add_note"
syn match muliStatement "iinsert_oo_add_numeric"
syn match muliStatement "iinsert_oo_add_table"
syn match muliStatement "iinsert_oo_add_text"
syn match muliStatement "iinsert_oo_create"
syn match muliStatement "iinsert_oo_destroy"
syn match muliStatement "iinsert_oo_do"
syn match muliStatement "iinsert_oo_remove"
syn match muliStatement "iinsert_oo_set_table_multi_row_mode"
syn match muliStatement "iis_link"
syn match muliStatement "iis_writeable"
syn match muliStatement "ilist_add"
syn match muliStatement "ilist_cdump"
syn match muliStatement "ilist_cdumpall"
syn match muliStatement "ilist_clear"
syn match muliStatement "ilist_clone"
syn match muliStatement "ilist_declare"
syn match muliStatement "ilist_delete"
syn match muliStatement "ilist_destroy"
syn match muliStatement "ilist_extext"
syn match muliStatement "ilist_fetchname"
syn match muliStatement "ilist_getindex"
syn match muliStatement "ilist_ifetch"
syn match muliStatement "ilist_insert"
syn match muliStatement "ilist_length"
syn match muliStatement "ilist_nfetch"
syn match muliStatement "ilist_set"
syn match muliStatement "ilist_setname"
syn match muliStatement "ilist_settext"
syn match muliStatement "ilist_sfetch"
syn match muliStatement "ilist_sort"
syn match muliStatement "ilist_ssearch"
syn match muliStatement "ilist_totext"
syn match muliStatement "ilist_type"
syn match muliStatement "imfiler"
syn match muliStatement "imkdir"
syn match muliStatement "imlog"
syn match muliStatement "imlog_pop_stats"
syn match muliStatement "imlog_push_stats"
syn match muliStatement "inote_append_block_tag"
syn match muliStatement "inote_append_text"
syn match muliStatement "inote_check_block_tag"
syn match muliStatement "inote_delete"
syn match muliStatement "inote_insert_text"
syn match muliStatement "ipassword_check"
syn match muliStatement "ipassword_encrypt"
syn match muliStatement "ipqe"
syn match muliStatement "ipqaffectedrows"
syn match muliStatement "ipqbackendpid"
syn match muliStatement "ipqclear"
syn match muliStatement "ipqclose"
syn match muliStatement "ipqcmdstatus"
syn match muliStatement "ipqconnectdb"
syn match muliStatement "ipqcsvout"
syn match muliStatement "ipqerrcode"
syn match muliStatement "ipqerrmsg"
syn match muliStatement "ipqexec"
syn match muliStatement "ipqfetch"
syn match muliStatement "ipqgetvalue"
syn match muliStatement "ipqinsert"
syn match muliStatement "ipqnfields"
syn match muliStatement "ipqntuples"
syn match muliStatement "ipqnumfetch"
syn match muliStatement "ipqpartialstore"
syn match muliStatement "ipqstore"
syn match muliStatement "ipqstrfetch"
syn match muliStatement "ipqtime"
syn match muliStatement "ipqtimestamp"
syn match muliStatement "ipqtransactionstatus"
syn match muliStatement "ipqupdate"
syn match muliStatement "ipsclose"
syn match muliStatement "ipscreate"
syn match muliStatement "ipsdestroy"
syn match muliStatement "ipsfooter"
syn match muliStatement "ipsheader"
syn match muliStatement "ipsopen"
syn match muliStatement "ipsprint"
syn match muliStatement "ipswrite"
syn match muliStatement "iremove"
syn match muliStatement "iremove_non_printable"
syn match muliStatement "issue"
syn match muliStatement "istruct_dump"
syn match muliStatement "istructeq"
syn match Type	"pm_val" "pm_ctl"
	

syn keyword basicFunction	ABS abs Abs ASC asc Asc
syn keyword basicFunction	ATN atn
syn keyword basicFunction	COS cos \#CLONE\.REC
syn keyword basicFunction	ERDEV erdev Erdev ERL erl Erl
syn keyword basicFunction	ERR err Err EXP exp Exp 
syn keyword basicFunction	IOERR ioerr 
syn keyword basicFunction	INT int
syn keyword basicFunction	LEN len #LOC #loc 
syn keyword basicFunction	PEN pen Pen POINT point Point
syn keyword basicFunction	POS pos Pos RND rnd Rnd
syn keyword basicFunction	SGN sgn Sgn SIN sin Sin
syn keyword basicFunction	SPC spc Spc SQR sqr Sqr
syn keyword basicFunction	TAB tab Tab TAN tan Tan
syn match basicFunction	"VAL(" "val("
syn keyword basicFunction	CHR$ Chr$ chr$ COMMAND$ command$ Command$
syn keyword basicFunction	DATE$ date$ Date$ ENVIRON$ environ$ Environ$
syn keyword basicFunction	ERDEV$ erdev$ Erdev$ HEX$ hex$ Hex$
syn keyword basicFunction	INKEY$ inkey$ Inkey$ INPUT$ input$ Input$
syn keyword basicFunction	IOCTL$ ioctl$ Ioctl$ LCASES$ lcases$ Lcases$
syn keyword basicFunction	MID$ mid$
syn keyword basicFunction	STR$ str$ Str$
syn keyword basicTodo contained	TODO
syn match muli1 "[\&]"
syn match muli2 " = "

"integer number, or floating point number without a dot.
syn match  basicNumber		"\<\d\+\>"
"floating point number, with dot
syn match  basicNumber		"\<\d\+\.\d*\>"
"floating point number, starting with a dot
syn match  basicNumber		"[0-9]+\.\d\+\>"

" String and Character contstants
syn match   basicSpecial contained "\\\d\d\d\|\\."
syn region  basicString		  start=+"+  skip=+\\\\\|\\"+  end=+"+  contains=basicSpecial

syn match   basicTypeSpecifier  "[a-zA-Z0-9._][\$]"ms=s+1
syn match   basicVarRef "$\a[a-zA-Z0-9_.]*"
syn match  basicFunction  "[a-zA-Z0-9._]*[\$]"
" Used with OPEN statement
"syn sync ccomment basicComment
" syn match   basicMathsOperator "[<>+\*^/\\=-]"
syn match   basicMathsOperator   "-\|=\|[:<>+\*^/\\]\|AND\|OR"

syn region  basicComment	start="REM" end="$" contains=basicTodo
syn region  basicComment	start="|" end="$" contains=basicTodo
syn region  basicComment	start="\-\-" end="$" contains=basicTodo

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_basic_syntax_inits")
  if version < 508
    let did_basic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink basicLabel		Label
  HiLink basicConditional	Conditional
  HiLink basicRepeat		Repeat
  HiLink basicLineNumber	Comment
  HiLink basicNumber		Number
  HiLink basicError		Error
  HiLink basicStatement	Statement
  HiLink basicString		String
  HiLink basicComment		Comment
  HiLink basicSpecial		Special
  HiLink basicTodo		Todo
  HiLink basicFunction		Identifier
  HiLink basicVarRef      Type
  HiLink  muli1		Statement
  HiLink  muli2		Identifier
  HiLink  muliStatement	Statement
  HiLink basicTypeSpecifier Type
  HiLink basicFilenumber basicTypeSpecifier
  "hi basicMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif

let b:current_syntax = "muli"

" vim: ts=3
