---@meta

utf = {}

---
---https://github.com/latex3/lualibs/blob/main/lualibs-unicode.lua

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.byte() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.sub(str, start, stop) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.len() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.values() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.characters() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.ustring(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.xstring(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.tocodes(str, separator) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.split(str, ignorewhitespace) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.splitlines(str) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.totable(str) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.count(str, what) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.remapper(mapping, option, action) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.replacer(t) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.subtituter(t) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.is_valid(str) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.char() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.chrlen(u) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.filetype(data) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.length() end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.magic(f) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.toeight(str) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.toentities(str) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.toutf32string(n) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf16_to_utf8_be(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf16_to_utf8_be_t(t) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf16_to_utf8_le(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf16_to_utf8_le_t(t) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf16_to_utf8_t(t, endian) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf32_to_utf8_be(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf32_to_utf8_be_t(t) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf32_to_utf8_le(s) end

---
---😱 [Types](https://github.com/TeXLuaCATS/Lualibs/blob/main/library/utf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/TeXLuaCATS/Lualibs/pulls)
function utf.utf32_to_utf8_le_t(t) end
