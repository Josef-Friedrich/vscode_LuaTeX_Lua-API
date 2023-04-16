---@meta
---A helper table to better navigate through the documentation using the
---outline: https://github.com/Josef-Friedrich/LuaTeX_Lua-API#navigation-table-_n
_N = {}

---
---The token library provides means to intercept the input and deal with it at the
---Lua level. The library provides a basic scanner infrastructure that can be used
---to write macros that accept a wide range of arguments. This interface is on
---purpose kept general and as performance is quite ok. One can build additional
---parsers without too much overhead. It's up to macro package writers to see how
---they can benefit from this as the main principle behind LuaTeX is to provide a
---minimal set of tools and no solutions. The scanner functions are probably the
---most intriguing.
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2091-L2098](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2091-L2098)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
token = {}

---
---10.6 The token library

---
---Scan and gobble a given keyword.
---
---As with the regular *TeX* keyword scanner this is case insensitive (and ASCII based).
---
---__Example:__
---
---```latex
---\def\scanner{\directlua{
---  print(token.scan_keyword('keyword'))
---}}
---\scanner keyword % true
---\scanner KEYWORD % true
---\scanner not the keyword % false
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L339-L353](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L339-L353)
---
---@param keyword string # An ASCII based keyword to scan for.
---
---@return boolean # True if the keyword could be gobbled up otherwise false.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_keyword(keyword) end

---
--- Scan and gobble a given case sensitive and *UTF-8* based keyword.
---
---__Example:__
---
---```tex
---\def\scanner{\directlua{
---  print(token.scan_keyword_cs('Keyword'))
---}}
---\scanner Keyword % true
---\scanner keyword % false
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L355-L369](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L355-L369)
---
---@param keyword string # A case sensitive and *UTF-8* based keyword
---
---@return boolean # True if the case sensitive and *UTF-8* based keyword could be gobbled up otherwise false.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_keyword_cs(keyword) end

---
---Scan and gobble a given integer.
---
---__Example:__
---
---```latex
---\def\scanner{\directlua{
---  print(token.scan_int())
---}}
---\scanner 1 % 1
---\scanner 1.1 % 1 (Scans only 1 not 1.1)
---\scanner -1 % -1
---\scanner 1234567890 % 1234567890
---\scanner string % Missing number, treated as zero
---\scanner 12345678901 % Number to big
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L391-L401](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L391-L401)
---
---@return integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_int() end

---
---Scan and gobble a floating point number that cannot have an exponent (`1E10` is scanned as `1.0`).
---
---__Example:__
---
---```tex
---\def\scan{\directlua{
---  print(token.scan_real())
---}}
---\scan 1E10 % 1.0 Does not scan “E10“
---\scan 1 % 1.0
---\scan 1.1 % 1.1
---\scan .1 % 0.1
---\scan - .1 % -0.1
---\scan -1 % -1.0
---\scan - 1 % -1.0
---\scan 1234567890 % 1234567890.0
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L530-L533](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L530-L533)
---
---@return number
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_real() end

---
---Scan and gobble a floating point number that can be provided with an exponent (e. g. `1E10`).
---
---__Example:__
---
---```tex
---\def\scan{\directlua{
---  print(token.scan_float())
---}}
---\scan 1E10 % 10000000000.0
---\scan .1e-10 % 1e-11
---\scan 1 % 1.0
---\scan 1.1 % 1.1
---\scan .1 % 0.1
---\scan - .1 % -0.1
---\scan -1 % -1.0
---\scan - 1 % -1.0
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L525-L528](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L525-L528)
---
---@return number
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_float() end

---
---Returns a number representing a dimension and or two numbers being the filler and order
---
---__Example:__
---
---Parameter `inf`:
---
---```tex
---\directlua{token.scan_dimen(true)}1fi % 1
---\directlua{token.scan_dimen(true)}1fil % 2
---\directlua{token.scan_dimen(true)}1fill % 3
---\directlua{token.scan_dimen(true)}1filll % 4
---
---```
---
---Parameter `mu`:
---
---```tex
---\directlua{token.scan_dimen(false, true)}1mu % 65536
---\directlua{token.scan_dimen(false, true)}1cm % Illegal unit of measure (mu inserted).
---```
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L535-L557](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L535-L557)
---
---@param inf? boolean # inf values allowed
---@param mu? boolean # mu (math units) units required
---
---@return integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_dimen(inf, mu) end

---
---returns a glue spec node
---
---__Example:__
---
---```tex
---\def\scan{\directlua{
---  local node = token.scan_glue()
---  print(node.width, node.stretch, node.stretch_order, node.shrink, node.shrink_order)
---}}
---\def\scanMu{\directlua{
---  local node = token.scan_glue(true)
---  print(node.width, node.stretch, node.stretch_order, node.shrink, node.shrink_order)
---}}
---\scan 1pt % 65536 0 0 0 0
---\scan 1pt plus 2pt % 65536 131072 0 0 0
---\scan 1pt minus 3pt % 65536 0 0 196608 0
---\scan 1pt plus 2pt minus 3pt % 65536 131072 0 196608 0
---\scan 1pt plus 2fi minus 3fi % 65536 131072 1 196608 1
---\scan 1pt plus 2fil minus 3fil % 65536 131072 2 196608 2
---\scan 1pt plus 2fill minus 3fill % 65536 131072 3 196608 3
---\scan 1pt plus 2filll minus 3filll % 65536 131072 4 196608 4
---\scan string % Missing number, treated as zero.
---\scanMu 3mu % 196608 0 0 0 0
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L559-L573](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L559-L573)
---
---@param mu_units? boolean
---
---@return GlueSpecNode
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_glue(mu_units) end

---
---Scan a list of tokens delimited by balanced braces.
---
---__Example:__
---
---```tex
---\directlua{
---  local t = token.scan_toks()
---  for id, tok in ipairs(t) do
---    print(id, tok, tok.command, tok.cmdname, tok.csname)
---  end
---}{Some text}
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L575-L602](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L575-L602)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)-
---
---@param definer? boolean `macro_def`, `\def`
---@param expand? boolean
---
---@return Token[]
function token.scan_toks(definer, expand) end

---
---Return a character if its category is in the given bitset (representing catcodes)
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L730-L756](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L730-L756)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_code(bitset) end

---
---Scan and gobble a string.
---
---The string scanner scans for something between curly braces and expands on the
---way, or when it sees a control sequence it will return its meaning. Otherwise it
---will scan characters with catcode `letter` or `other`.
---
---__Example:__
---
---```tex
---\def\scan{\directlua{
---  print(token.scan_string())
---}}
---\def\bar{bar}
---\def\foo{\bar}
---\scan \foo % bar
---\scan {\foo} % bar
---\scan {A string} % A string
---\scan A string % A
---\scan Word1 Word2 % Word1
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L604-L641](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L604-L641)
---
---@return string # A string given between `{` `}`, as `\macro` or as sequence of characters with catcode 11 or 12
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_string() end

---
---Scan and gobble an argument.
---
---This function is simular to `token.scan_string` but also accepts a `\cs`.
---It expands the given argument. When a braced
---argument is scanned, expansion can be prohibited by passing `false`
---(default is `true`). In case of a control sequence passing `false`
---will result in a one-level expansion (the meaning of the macro).
---
---__Example:__
---
---```latex
---\def\scan{\directlua{
---  print(token.scan_argument(true))
---}}
---\def\scanNoExpand{\directlua{
---  print(token.scan_argument(false))
---}}
---\def\foo{bar}
---\scan \foo % bar
---\scan { {\bf text} } % {\fam \bffam \tenbf text}
---\scanNoExpand { {\bf text} } % {\bf text}
---\scan c % c
---\scan \bf % \fam \bffam \tenbf
---```
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L643-L702](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L643-L702)
---
---@param expand? boolean # When a braced argument is scanned, expansion can be prohibited by passing `false` (default is `true`)
---
---@return string
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_argument(expand) end

---
---Return a sequence of characters with catcode `11` or `12` as a string.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L704-L728](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L704-L728)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_word() end

---
---Return `foo` after scanning `\foo`.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L371-L389](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L371-L389)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_csname() end

---
---Pick up a box specification and return a `[h|v]list` node.
---
---* Corresponding C source code: [lnewtokenlib.c#L1100-L1111](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1100-L1111)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_list() end

---
---Scan and gobble the next token.
---
---The different scanner functions of the `token` library look for a
---sequence of tokens. This function scans just the next token.
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2237-L2239](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2237-L2239)
---* Corresponding C source code: [lnewtokenlib.c#L231-L239](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L231-L239)
---
---@return Token
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_next() end

---
---Use `scan_token`
---if you want to
---enforce expansion first you can.
---
---* Corresponding C source code: [lnewtokenlib.c#L1090-L1098](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1090-L1098)
---
---@return Token
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.scan_token() end

---
---Trigger expansion of the next token in the
---input.
---
---This can be quite unpredictable but when you call it you probably know
---enough about *TeX* not to be too worried about that. It basically is a call to
---the internal expand related function.
---
---* Corresponding C source code: [lnewtokenlib.c#L764-L769](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L764-L769)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.expand() end

---
---* Corresponding C source code: [luatoken.c#L192-L351](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/luatoken.c#L192-L351)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
---@alias TokenCommandName
---| 'relax'
---| 'left_brace'
---| 'right_brace'
---| 'math_shift'
---| 'tab_mark'
---| 'car_ret'
---| 'mac_param'
---| 'sup_mark'
---| 'sub_mark'
---| 'endv'
---| 'spacer'
---| 'letter'
---| 'other_char'
---| 'par_end'
---| 'stop'
---| 'delim_num'
---| 'char_num'
---| 'math_char_num'
---| 'mark'
---| 'node'
---| 'xray'
---| 'make_box'
---| 'hmove'
---| 'vmove'
---| 'un_hbox'
---| 'un_vbox'
---| 'remove_item'
---| 'hskip'
---| 'vskip'
---| 'mskip'
---| 'kern'
---| 'mkern'
---| 'leader_ship'
---| 'halign'
---| 'valign'
---| 'no_align'
---| 'vrule'
---| 'hrule'
---| 'novrule'
---| 'nohrule'
---| 'insert'
---| 'vadjust'
---| 'ignore_spaces'
---| 'after_assignment'
---| 'after_group'
---| 'partoken_name'
---| 'break_penalty'
---| 'start_par'
---| 'ital_corr'
---| 'accent'
---| 'math_accent'
---| 'discretionary'
---| 'eq_no'
---| 'left_right'
---| 'math_comp'
---| 'limit_switch'
---| 'above'
---| 'math_style'
---| 'math_choice'
---| 'non_script'
---| 'vcenter'
---| 'case_shift'
---| 'message'
---| 'normal'
---| 'extension'
---| 'option'
---| 'lua_function_call'
---| 'lua_bytecode_call'
---| 'lua_call'
---| 'in_stream'
---| 'begin_group'
---| 'end_group'
---| 'omit'
---| 'ex_space'
---| 'boundary'
---| 'radical'
---| 'super_sub_script'
---| 'no_super_sub_script'
---| 'math_shift_cs'
---| 'end_cs_name'
---| 'char_ghost'
---| 'assign_local_box'
---| 'char_given'
---| 'math_given'
---| 'xmath_given'
---| 'last_item'
---| 'toks_register'
---| 'assign_toks'
---| 'assign_int'
---| 'assign_attr'
---| 'assign_dimen'
---| 'assign_glue'
---| 'assign_mu_glue'
---| 'assign_font_dimen'
---| 'assign_font_int'
---| 'assign_hang_indent'
---| 'set_aux'
---| 'set_prev_graf'
---| 'set_page_dimen'
---| 'set_page_int'
---| 'set_box_dimen'
---| 'set_tex_shape'
---| 'set_etex_shape'
---| 'def_char_code'
---| 'def_del_code'
---| 'extdef_math_code'
---| 'extdef_del_code'
---| 'def_family'
---| 'set_math_param'
---| 'set_font'
---| 'def_font'
---| 'def_lua_call'
---| 'register'
---| 'assign_box_direction'
---| 'assign_box_dir'
---| 'assign_direction'
---| 'assign_dir'
---| 'combinetoks'
---| 'advance'
---| 'multiply'
---| 'divide'
---| 'prefix'
---| 'let'
---| 'shorthand_def'
---| 'read_to_cs'
---| 'def'
---| 'set_box'
---| 'hyph_data'
---| 'set_interaction'
---| 'letterspace_font'
---| 'expand_font'
---| 'copy_font'
---| 'set_font_id'
---| 'undefined_cs'
---| 'expand_after'
---| 'no_expand'
---| 'input'
---| 'lua_expandable_call'
---| 'lua_local_call'
---| 'if_test'
---| 'fi_or_else'
---| 'cs_name'
---| 'convert'
---| 'variable'
---| 'feedback'
---| 'the'
---| 'top_bot_mark'
---| 'call'
---| 'long_call'
---| 'outer_call'
---| 'long_outer_call'
---| 'end_template'
---| 'dont_expand'
---| 'glue_ref'
---| 'shape_ref'
---| 'box_ref'
---| 'data'

---
---A token object has the properties of the `relax`
---primitive.
---
---Alternatively you can use a getter `get_<fieldname>` to access a property
---of a token.
---
---The numbers that represent a catcode are the same as in *TeX* itself, so using
---this information assumes that you know a bit about *TeX*'s internals. The other
---numbers and names are used consistently but are not frozen. So, when you use them
---for comparing you can best query a known primitive or character first to see the
---values.
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2285-L2310](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2285-L2310)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
---@class Token
---@field command integer # A number representing the internal command number (catcode in case of a character), for example: `1` (`left_brace`), `2` (`right_brace`), `3` (`math_shift`), `4` (`tab_mark`), `6` (`mac_param`), `7` (`sup_mark`), `8` (`sub_mark`), `10 ` (`spacer`), `11 ` (`letter`), `12 ` (`other`), `147` (`call`).
---@field cmdname TokenCommandName # The type of the command, for example `letter`.
---@field csname string|nil # The associated control sequence (if applicable), for example `bigskip`.
---@field id integer # The unique id of the token, for example `6876`.
---@field tok integer # The full token number as stored in TeX, for example `536883863`.
---@field active boolean # A boolean indicating the active state of the token, for example `true`.
---@field expandable boolean # A boolean indicating if the token (macro) is expandable, for example `true`.
---@field public protected boolean # A boolean indicating if the token (macro) is protected, for example `false`.
---@field mode integer # A number either representing a character or another entity, for example `1007`.
---@field index integer|nil # A number running from 0x0000 upto 0xFFFF indicating a `TeX` register index. In case of letters the unicode code point, for example `398` = `Ǝ`.

---
---Return the internal command number.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L870-L880](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L870-L880)
---
---@param t Token
---
---@return integer command # A number representing the internal command number, for example `147`.
---
---@see Token.command
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_command(t) end

---
---Return the type of the command (for instance the catcode in case of a character or the classifier that determines the internal treatment, for example `letter`.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L936-L943](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L936-L943)
---
---@param t Token
---
---@return TokenCommandName cmdname # The type of the command (for instance the catcode in case of a character or the classifier that determines the internal treatment, for example `letter`.
---
---@see Token.cmdname
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_cmdname(t) end

---
---Return the associated control sequence (if applicable), for example `bigskip`.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L945-L959](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L945-L959)
---
---@param t Token
---
---@return string|nil csname # The associated control sequence (if applicable), for example `bigskip`.
---
---@see Token.csname
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_csname(t) end

---
---Return the unique id of the token.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L961-L966](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L961-L966)
---
---@param t Token
---
---@return integer id # The unique id of the token, for example `6876`.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_id(t) end

---
---Return the full token number as stored in TeX.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L968-L974](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L968-L974)
---
---@see Token.tok
---
---@param t Token
---
---@return integer tok # The full token number as stored in TeX, for example `536883863`.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_tok(t) end

---
---Return a boolean indicating the active state of the token, for example `true`.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L976-L991](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L976-L991)
---
---@param t Token
---
---@return boolean active # A boolean indicating the active state of the token, for example `true`.
---
---@see Token.active
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_active(t) end

---
---Return a boolean indicating if the token (macro) is expandable.
---
---* Corresponding C source code: [lnewtokenlib.c#L993-L1004](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L993-L1004)
---
---@param t Token
---
---@return boolean expandable # A boolean indicating if the token (macro) is expandable, for example `true`.
---
---@see Token.expandable
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_expandable(t) end

---
---Return a boolean indicating if the token (macro) is protected.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L1006-L1022](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1006-L1022)
---
---@param t Token
---
---@return boolean protected # A boolean indicating if the token (macro) is protected, for example `false`.
---
---@see Token.protected
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_protected(t) end

---
---Return a number either representing a character or another entity.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L924-L934](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L924-L934)
---
---@param t Token
---
---@return integer mode # A number either representing a character or another entity, for example `1007`.
---
---@see Token.mode
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_mode(t) end

---
---Return a number running from `0x0000` upto `0xFFFF` indicating a TeX register index.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L882-L922](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L882-L922)
---
---@param t Token
---
---@return integer index # A number running from 0x0000 upto 0xFFFF indicating a TeX register index, for example `1007`.
---
---@see Token.index
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_index(t) end

---
---Get the content of a macro.
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L1141-L1166](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1141-L1166)
---
---@param name string # The name of the macro without the leading backslash.
---
---@return string # for example `foo #1 bar`.
---
---@see token.set_macro
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_macro(name) end

---
---Get the meaning of a macro including the argument
---specification (as usual in *TeX* separated by `->`).
---
---__Reference:__
---
---* Corresponding C source code: [lnewtokenlib.c#L1121-L1139](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1121-L1139)
---
---@param name string # The name of the macro without the leading backslash.
---
---@return string # for example `->foo #1 bar`.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.get_meaning(name) end

---
---Ask for a list of commands.
---
---* Corresponding C source code: [lnewtokenlib.c#L1373-L1382](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1373-L1382)
---
---@return table
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.commands() end

---
---Return the id of a token class.
---
---@param cmdname TokenCommandName # for example `letter`
---
---@return integer|nil
---
---* Corresponding C source code: [lnewtokenlib.c#L201-L213](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L201-L213)
function token.command_id(cmdname) end

---
---Create a token.
---
---* Corresponding C source code: [lnewtokenlib.c#L826-L845](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L826-L845)
---
---@param chr integer
---@param cmd? integer
---
---@return Token
---
---@see token.new
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.create(chr, cmd) end

---
--- A variant that ignores the current catcode table is:
---
---* Corresponding C source code: [lnewtokenlib.c#L847-L854](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L847-L854)
---
---@param chr integer
---@param cmd integer
---
---@return Token
---
---@see token.create
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.new(chr, cmd) end

---
---__Example:__
---
---```tex
---\def\foo{bar}
---\directlua{
---  print(token.is_defined('foo')) % true
---  print(token.is_defined('nofoo')) % false
---  print(token.is_defined('bf')) % true
---}
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L807-L824](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L807-L824)
---
---@param cs string
---
---@return boolean
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.is_defined(cs) end

---
---__Example:__
---
---```lua
---print(token.biggest_char()) % 1114111
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L185-L189](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L185-L189)
---
---@return integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.biggest_char() end

---
---Create a macro.
---
---__Example:__
---
---```tex
---\directlua{
---  token.set_macro("test", "content")
---}
---\test
---```
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2368-L2382](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2368-L2382)
---* Corresponding C source code: [lnewtokenlib.c#L1218-L1342](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1218-L1342)
---
---@param csname string
---@param content? string
---@param global? 'global'
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.set_macro(csname, content, global) end

---
---Create a macro.
---
---__Example:__
---
---```tex
---\directlua{
---  token.set_macro("test", "content")
---}
---\test
---```
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2368-L2382](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2368-L2382)
---* Corresponding C source code: [lnewtokenlib.c#L1218-L1342](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1218-L1342)
---
---@param catcodetable integer # A catcodetable identifier.
---@param csname string
---@param content? string
---@param global? 'global'
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.set_macro(catcodetable, csname, content, global) end

---
---Do a `chardef` at the
---*Lua* end, where invalid assignments are silently ignored.
---
---__Example:__
---
---```tex
---\directlua{
---  token.set_char('myT', 84)
---  token.set_char('mye', 101)
---  token.set_char('myX', 88)
---}
---\myT\mye\myX % TeX
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L1344-L1371](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1344-L1371)
---
---@param csname string
---@param number integer
---@param global? 'global'
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.set_char(csname, number, global) end

---
---Create a token that refers to a *Lua* function with an entry in the table
---that you can access with `lua.get_functions_table`. It is the companion
---to `luadef`.
---
---__Example:__
---
---```tex
---\directlua{
---  local t = lua.get_functions_table()
---
---  t[1] = function () end

---
---  local index = 1
---  while t[index] do
---    index = index + 1
---  end
---
---  t[index] = function(slot)
---    print(slot)
---  end
---  token.set_lua('mycode', index, 'protected', 'global')
---}
---
---\mycode
---
---\bye
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L1168-L1216](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1168-L1216)
---
---@param name string
---@param id integer
---@param ... 'global'|'protected'
---
---@see lua.get_functions_table
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.set_lua(name, id, ...) end

---
---Put the next token back in the input.
---
---__Example:__
---
---```lua
---local t1 = token.get_next()
---local t2 = token.get_next()
---local t3 = token.get_next()
---local t4 = token.get_next()
----- watch out, we flush in sequence
---token.put_next { t1, t2 }
----- but this one gets pushed in front
---token.put_next ( t3, t4 )
----- so when we get wxyz we put yzwx!
---```
---
---__Reference:__
---
---* Source code of the `LuaTeX` manual: [luatex-tex.tex#L2422-L2433](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/manual/luatex-tex.tex#L2422-L2433)
---* Corresponding C source code: [lnewtokenlib.c#L262-L337](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L262-L337)
---
---@param ... Token
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.put_next(...) end

---
---Check if the given argument is a token.
---
---__Example:__
---
---```tex
---\directlua{
---  local t = token.get_next()
---  print(token.is_token(t)) % true
---  print(token.is_token('text')) % false
---  print(token.is_token(true)) % false
---}Token
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L758-L762](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L758-L762)
---
---@param t any
---
---@return boolean
---
---@see token.type
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.is_token(t) end

---
---Return the string `token` if the given parameter is a token else `nil`.
---
---__Example:__
---
---```tex
---\directlua{
---  local t = token.get_next()
---  print(token.type(t)) % 'token'
---  print(token.type('text')) % nil
---  print(token.type(true)) % nil
---}Token
---```
---
---* Corresponding C source code: [lnewtokenlib.c#L1080-L1088](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lnewtokenlib.c#L1080-L1088)
---
---@param t any
---
---@return 'token'|nil
---
---@see token.is_token
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/token.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function token.type(t) end
