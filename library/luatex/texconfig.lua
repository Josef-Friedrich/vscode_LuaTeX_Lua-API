---@meta
---This is a table that is created empty. A startup *Lua* script could
---fill this table with a number of settings that are read out by
---the executable after loading and executing the startup file.
texconfig = {}

---
---`false` totally disables \KPATHSEA\ initialisation, and enables
---interpretation of the following numeric key--value pairs. (only ever unset
---this if you implement {\it all\/} file find callbacks!)
---
---`shell_escape`  string  `'f'`  Use `'y'` or `'t'` or `'1'` to enable `\write18` unconditionally, `'p'`
---to enable the commands that are listed in `shell_escape_commands`
---
---shell_escape_commands  string   Comma-separated list of command
---names that may be executed by `\write18` even if `shell_escape`
---is set to `'p'`. Do {\it not\/} use spaces around commas, separate any
---required command arguments by using a space, and use the \ASCII\ double quote
---(`"`) for any needed argument or path quoting
---@type boolean
texconfig.kpse_init = true

---
---Minimum pool space after TeX's own strings; must be at least 25000 less than pool_size, but doesn't need to be nearly that large.
---
---__Reference:__
---
---* [texmf.cnf#L810-L811](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf#L810-L811)
---
---@type integer
texconfig.string_vacancies = 75000

---
---Min pool space left after loading .fmt.
---
---__Reference:__
---
---* [texmf.cnf#L815](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf#L815)
---
---@type integer
texconfig.pool_free = 5000

---
---Maximum number of strings.
---
---__Reference:__
---
---* [texmf.cnf#L813](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf#L813)
---
---@type integer
texconfig.max_strings = 15000

---
---Ensure at least this many strings are free after loading .fmt.
---
---__Reference:__
---
---* [texmf.cnf#L817](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf#L817)
---
---@type integer
texconfig.strings_free = 100

---
---simultaneous semantic levels (e.g., groups)
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.nest_size = 50

---
---simultaneous input files and error insertions, also applies to MetaPost
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.max_in_open = 15

---
---simultaneous macro parameters, also applies to MP
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.param_size = 60

---
---for saving values outside current group
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.save_size = 4000

---
---simultaneous input sources
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.stack_size = 300

---
---These work best if they are the same as the I/O buffer size, but it doesn't matter much.  Must be a multiple of 8.
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.dvi_buf_size = 16384

---
---It's probably inadvisable to change these. At any rate, we must have:
---45 < error_line      < 255;
---30 < half_error_line < error_line - 15;
---60 <= max_print_line;
---These apply to TeX, Metafont, and MetaPost.
---"max_print_line" applies to BibTeX family
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.error_line = 79

---
---It's probably inadvisable to change these. At any rate, we must have:
---45 < error_line      < 255;
---30 < half_error_line < error_line - 15;
---60 <= max_print_line;
---These apply to TeX, Metafont, and MetaPost.
---"max_print_line" applies to BibTeX family
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.half_error_line = 50

---
---It's probably inadvisable to change these. At any rate, we must have:
---45 < error_line      < 255;
---30 < half_error_line < error_line - 15;
---60 <= max_print_line;
---These apply to TeX, Metafont, and MetaPost.
---"max_print_line" applies to BibTeX family
---
---__Reference:__
---
---* [kpathsea/texmf.cnf](https://github.com/TeX-Live/luatex/blob/2f443efc11d9b87ec0592ddd64c90d9ad15ea498/source/texk/kpathsea/texmf.cnf)
---
---@type integer
texconfig.max_print_line = 79

---
---Extra space for the hash table of control sequences.
---@type integer
texconfig.hash_extra = 0

---
---For pdftex and luatex: default resolution for bitmaps; commonly set via \pdfpkresolution when needed to be changed.
---@type integer
texconfig.pk_dpi = 72

---
---`false` disables *TeX*'s normal file open-close feedback (the
---assumption is that callbacks will take care of that)
---@type boolean
texconfig.trace_file_names = true

---
---do `file:line` style error messages
---@type boolean
texconfig.file_line_error = false

---
---abort run on the first encountered error
---@type boolean
texconfig.halt_on_error = false

---
---if no format name was given on the command line, this key will be tested first
---instead of simply quitting
---@type string
texconfig.formatname = ""

---
---if no input file name was given on the command line, this key will be tested
---first instead of simply giving up
---
---@type string
texconfig.jobname = ""

---
---character to put in front of traced macros (see next value)
---
---@type integer
texconfig.level_chr = 0

---
---when larger than zero the input nesting level will be shown when `\tracingmacros` is set; levels above this value will be clipped with
---the level shown up front
---
---Note: the numeric values that match web2c parameters are only used if `kpse_init` is explicitly set to `false`. In all other cases, the normal
---values from `texmf.cnf` are used.
---
---You can kick in your own nesting level visualizer, for instance:
---
---```
---callback.register("input_level_string",function(n)
---         if tex.tracingmacros > 0 and tex.count.tracingstacklevels > 0 then
---    if tex.tracingmacros > 1 then
---        return "! " .. string.rep(">",n) .. " "
---    end
---end)
---```
---
---Or, in sync with other engines (not checked):
---
---\newcount\tracingstacklevels
---
---```
---\directlua {
---  callback.register("input_level_string", function(n)
---    if tex.tracingmacros > 0 then
---      local l = tex.count.tracingstacklevels
---      if l > 0 then
---        return string.rep(" ",l) .. string.rep(".",n-l)
---      end
---    end
---  end)
---}
---```
---@type integer
texconfig.level_max = 0
