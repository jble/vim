set ts=3
set sw=3
set et

syn keyword rpcKeyword license prefix copyright
syn keyword rpcCommand object enum typedef rpc id signal
syn keyword rpcModifier client server
syn keyword rpcType int string uint bool int64 uint64 TimeVal
syn keyword rpcDirection in out
syn region  rpcComment
      \ start=+[uU]\=\z('''\|"""\)+ end="\z1" keepend

if version >= 508 || !exists("did_glib_syntax_inits")
  if version < 508
    let did_glib_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink rpcKeyword Macro
  HiLink rpcCommand Type
  HiLink rpcType Type
  HiLink rpcModifier Identifier
  HiLink rpcComment Macro
  HiLink rpcDirection Identifier
  "Type
  "Constant
  "Identifier
  delcommand HiLink
endif

