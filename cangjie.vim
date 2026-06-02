" Vim syntax file
" Language:	Cangjie
" Maintainer:	Niujie
" Last Change:	2026 Jun 01


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

syn keyword cangjieStatement	as break continue return class redef type
syn keyword cangjieStatement	abstract Bool extend func foreign interface
syn keyword cangjieStatement	super unsafe macro prop public private protected get set inout
syn keyword cangjieStatement	struct
syn keyword cangjieBoolean		FALSE TRUE false true
syn keyword cangjieStorageClass	static mut const var let
syn keyword cangjieStatement	this synchronized This Nothing override operator
syn keyword cangjieConditional	else if case match
syn keyword cangjieRepeat		for while do
syn keyword cangjieOperator		in is where 
syn keyword cangjieException		try finally catch throw
syn keyword cangjieInclude		import package from
syn keyword cangjieAsync		async await spawn
syn keyword cangjieBuiltin		open main enum Rune VArray quote print println
syn keyword cangjieType		init Float16 Float32 Float64
syn keyword cangjieType		Int8 Int16 Int32 Int64 IntNative 
syn keyword cangjieType		Unit UInt8 UInt16 UInt32 UInt64 UIntNative
syn keyword cangjieTodo		contained TODO XXX

" Decorators (including @ symbol)
syn match cangjieDecorator		"\v\@[A-Za-z_][A-Za-z0-9_.]*"
" Float patterns before integers: ensures "0.5" matched as float, not "0" + "." + "5"
syn match cangjieDecimalFloat		"\v\b[0-9]([0-9_]*)?\.[0-9]([0-9_]*)?([eE][-]?[0-9]([0-9_]*)?)?(f16|f32|f64)?"
syn match cangjieDecimalFloat		"\v\b[0-9]([0-9_]*)?[eE][-]?[0-9]([0-9_]*)?(f16|f32|f64)?"
syn match cangjieHexadecimalFloat	"\v\b0[xX]\.[0-9a-fA-F]([0-9a-fA-F_]*)?[pP][-]?[0-9]([0-9_]*)?"
syn match cangjieHexadecimalFloat	"\v\b0[xX][0-9a-fA-F]([0-9a-fA-F_]*)?\.[0-9a-fA-F]([0-9a-fA-F_]*)?[pP][-]?[0-9]([0-9_]*)?"
syn match cangjieHexadecimalFloat	"\v\b0[xX][0-9a-fA-F]([0-9a-fA-F_]*)?[pP][-]?[0-9]([0-9_]*)?"
syn match cangjieBinaryInteger		"\v\b0[bB][01]([01_]*)?(u8|u16|u32|u64|i8|i16|i32|i64)?\b"
syn match cangjieOctalInteger		"\v\b0[oO][0-7]([0-7_]*)?(u8|u16|u32|u64|i8|i16|i32|i64)?\b"
syn match cangjieDecimalInteger		"\v\b[0-9]([0-9_]*)?(u8|u16|u32|u64|i8|i16|i32|i64)?\b"
syn match cangjieHexadecimalInteger	"\v\b0[xX][0-9a-fA-F]([0-9a-fA-F_]*)?(u8|u16|u32|u64|i8|i16|i32|i64)?(\.)@!\b"
" Symbolic operators (+, -, *, /, %, =, <, >, !, &, |, ^, ~, ?, :, .)
syn match cangjieOperator		"[-+*/%=<>!&|^~?:.]"
" Delimiters (braces, parentheses, brackets)
syn match cangjieDelimiter		"[{}()[\]]"
" Escape sequences in strings and characters
syn match cangjieEscape	contained	+\\[abfnrtv0\\'"?]+
syn match cangjieEscape	contained	+\\x[0-9a-fA-F]\{2}+
syn match cangjieEscape	contained	+\\u[0-9a-fA-F]\{4}+
syn match cangjieEscape	contained	+\\U[0-9a-fA-F]\{8}+
" Comments and strings
syn match cangjieLineComment		"//.*" contains=cangjieTodo,@Spell
syn region cangjieComment		start="/\*" end="\*/" contains=cangjieTodo,@Spell
syn region cangjieString		start=+"+ skip=+\\\\\|\\"+ end=+"+ contains=cangjieEscape
syn region cangjieSingleQuote		start=+'+ skip=+\\\\\|\\'+ end=+'+

" Fold support (transparent — no highlight, only fold calculation)
syn region cangjieFoldBlock start="{" end="}" transparent fold

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
hi def link cangjieBinaryInteger	Number
hi def link cangjieOctalInteger		Number	
hi def link cangjieDecimalInteger	Number	
hi def link cangjieHexadecimalInteger	Number
hi def link cangjieDecimalFloat		Number
hi def link cangjieHexadecimalFloat	Number
hi def link cangjieEscape		Special
hi def link cangjieBoolean		Boolean
hi def link cangjieStorageClass		StorageClass
hi def link cangjieDelimiter		Delimiter


let b:current_syntax = "cangjie"

let &cpo = s:cpo_save
unlet s:cpo_save

" vim:set sw=2 sts=2 ts=8 noet: