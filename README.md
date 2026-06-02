# vim4cj

Vim 对 **仓颉编程语言** 的语法高亮插件，支持基本语法元素和代码折叠。

## 安装

Linux 将filetype.vim放入~/.vim中，cangjie.vim放入~/.vim/syntax中即可。

## 语法高亮特性

| 分类 | 高亮组 | 关联组 | 匹配内容 |
|------|--------|--------|----------|
| 语句关键字 | `cangjieStatement` | `Statement` | `as` `break` `return` `class` `struct` `abstract` `func` `interface` `override` `this` `macro` ... |
| 条件分支 | `cangjieConditional` | `Conditional` | `if` `else` `match` `case` |
| 循环 | `cangjieRepeat` | `Repeat` | `for` `while` `do` |
| 操作符 | `cangjieOperator` | `Operator` | `in` `is` `where` 以及 `+-*/%=<>!&\|^~?:.` 等符号 |
| 异常处理 | `cangjieException` | `Exception` | `try` `catch` `finally` `throw` |
| 导入 | `cangjieInclude` | `Include` | `import` `package` `from` |
| 异步 | `cangjieAsync` | `Statement` | `async` `await` `spawn` |
| 内置函数 | `cangjieBuiltin` | `Function` | `print` `println` |
| 类型 | `cangjieType` | `Type` | `Int8`-`Int64` `UInt8`-`UInt64` `Float16`-`Float64` `Bool` `Rune` `VArray` 等 |
| 布尔值 | `cangjieBoolean` | `Boolean` | `true` `false` `TRUE` `FALSE` |
| 存储类 | `cangjieStorageClass` | `StorageClass` | `static` `mut` `const` `var` `let` |
| 装饰器 | `cangjieDecorator` | `Define` | `@` 开头的装饰器（如 `@attr`） |
| 整数 | `cangjie*Integer` | `Number` | 二进制 `0b`、八进制 `0o`、十进制、十六进制 `0x`，支持下划线分隔 |
| 浮点数 | `cangjie*Float` | `Number` | 十进制浮点 `.5` `1.5` `1e10` 和十六进制浮点 `0xFFp1`，可选 `f16`/`f32`/`f64` 后缀 |
| 字符串 | `cangjieString` | `String` | 双引号字符串，支持 `\\` `\"` 转义 |
| 字符 | `cangjieSingleQuote` | `String` | 单引号字符，支持 `\\` `\'` 转义 |
| 转义序列 | `cangjieEscape` | `Special` | `\n` `\t` `\0` `\xNN` `\uNNNN` `\UNNNNNNNN` |
| 行注释 | `cangjieLineComment` | `Comment` | `// ...`，支持拼写检查 |
| 块注释 | `cangjieComment` | `Comment` | `/* ... */`，支持拼写检查 |
| TODO | `cangjieTodo` | `Todo` | 注释中的 `TODO` `XXX` |
| 分隔符 | `cangjieDelimiter` | `Delimiter` | `{}` `()` `[]` |

## 代码折叠

语法文件内置了基于 `{}` 的折叠支持。

在 Vim 中启用：

```vim
:set foldmethod=syntax foldlevel=1
```

或写入 `~/.vim/ftplugin/cangjie.vim` 自动生效：

```vim
" ftplugin/cangjie.vim
setlocal foldmethod=syntax
setlocal foldlevel=1
```

> 注意：折叠区域是 `transparent` 的，不会影响分隔符的高亮颜色。

## 文件类型检测

`filetype.vim` 自动将 `.cj` 后缀的文件识别为 `cangjie` 类型。

## 关键字参考

基于华为仓颉编程语言官方文档：
- [仓颉编程指南 - 关键字](https://developer.huawei.com/consumer/cn/doc/cangjie-guides-V5/keyword-V5)
- [Cangjie Language Docs - Keywords](https://docs.cangjie-lang.cn/en/docs/1.0.0/user_manual/source_en/Appendix/keyword.html)

## 许可

MIT
