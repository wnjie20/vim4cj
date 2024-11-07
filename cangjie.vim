" Vim syntax file
" Language:	Cangjie
" Maintainer:	Niujie
" Last Change:	2024 Oct 31


" quit when a syntax file was already loaded.
if exists("b:current_syntax")
  finish
endif

" We need nocompatible mode in order to continue lines with backslashes.
" Original setting will be restored.
let s:cpo_save = &cpo
set cpo&vim

" Keyword can find in this URL.
" https://developer.huawei.com/consumer/cn/doc/cangjie-guides-V5/keyword-V5

syn keyword cangjieStatement	FALSE TRUE
syn keyword cangjieStatement	as break continue return class redef type
syn keyword cangjieStatement	abstract Bool const extend func foreign interface
syn keyword cangjieStatement	super static unsafe macro prop public private protected
syn keyword cangjieStatement	var let mut struct
syn keyword cangjieStatement	this synchronized This Nothing override operator
syn keyword cangjieConditional	else if case match
syn keyword cangjieRepeat		for while do
syn keyword cangjieOperator		in is where 
syn keyword cangjieException		try finally catch throw
syn keyword cangjieInclude		import package
syn keyword cangjieAsync		async await spawn
syn keyword cangjieBuiltin		open main enum Rune VArray quote print println
syn keyword cangjieType		init Float16 Float32 Float64
syn keyword cangjieType		Int8 Int16 Int32 Int64 IntNative 
syn keyword cangjieType		Unit UInt8 UInt16 UInt32 Uint64 UIntNative
syn keyword cangjieTodo		contained TODO XXX

" syn region cangjieLineComment	start="//.*" end="\n"
syn match cangjieLineComment            "//.*" 
syn match cangjieDecorator		"(?<=(@))[A-Za-z_][A-Za-z0-9_.]*"
syn region cangjieComment		start="/\*" end="\*/" 
syn region cangjieString		start=+"+ end=+"+
syn region cangjieSingleQuote		start=+'+ end=+'+

" The default highlight links.  Can be overridden later.
hi def link cangjieStatement		Statement
hi def link cangjieConditional		Conditional
hi def link cangjieRepeat		Repeat
hi def link cangjieOperator		Operator
hi def link cangjieException		Exception
hi def link cangjieInclude		Include
hi def link cangjieAsync		Statement
hi def link cangjieBuiltin		Function
hi def link cangjieType			Type
hi def link cangjieLineComment		Comment
hi def link cangjieComment		Comment
hi def link cangjieString		String
hi def link cangjieSingleQuote		String
hi def link cangjieDecorator		Define
hi def link cangjieTodo			Todo

let b:current_syntax = "cangjie"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2 ts=8 noet:
