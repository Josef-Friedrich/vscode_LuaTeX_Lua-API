---@meta

---
---This library contains variables and functions that are related to the *PDF*
---backend.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
pdf = {}

---
---Modify the map-file.
---
---This function modifies the map-file by adding, replacing, or removing all entries (lines) of <map_file>.
---
---@param map_file string # File name of map-file.
---The first character of <map_file> has a special meaning:
--- * `'+'`  Add new entries, if they do not exist already.
--- * `'='`  Replace existing entries.
--- * `'-'`  Remove entries, if they exist.
--- * `''`   Flush map file first, then insert new entries.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.mapfile(map_file) end

---
---Modify the map-file.
---
---This function modifies the map-file by adding, replacing, or removing exactly one entry (line).
---
---@param map_line string # Entry (line) to be added, replace, or removed.
---The first character of <map_line> has a special meaning:
--- * `'+'`  Insert new entry, if it doesn't exist already.
--- * `'='`  Replace existing entry.
--- * `'-'`  Remove entry, if it exists.
--- * `''`   Flush map file first, then insert new entry.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.mapline(map_line) end

---
---Insert string <catalog> into the `/Catalog` dictionary.
---
---@param catalog string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setcatalog(catalog) end

---
---Return string <catalog> that was set by `pdf.setcatalog()`.
---
---@return string | nil catalog # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getcatalog() end

---
---Insert string <info> into the `/Info` dictionary.
---
---@param info string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setinfo(info) end

---
---Return string <info> that was set by `pdf.setinfo()`.
---
---@return string | nil info # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getinfo() end

---
---Insert string <names> into the `/Names` dictionary of the `/Catalog`.
---
---@param names string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setnames(names) end

---
---Return string <names> that was set by `pdf.setnames()`.
---
---@return string | nil names # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getnames() end

---
---Insert string <trailer> into the `trailer` dictionary.
---
---@param trailer string # String.
---FIXME: pdf.settrailer() not working. Bug?
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.settrailer(trailer) end

---
---Return string <trailer> that was set by `pdf.settrailer()`.
---
---@return string | nil trailer # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.gettrailer() end

---
---Insert string <attributes> into the current `/Page` dictionary.
---
---@param attributes string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setpageattributes(attributes) end

---
---Return string <attributes> that was set by `pdf.setpageattributes()`.
---
---@return string | nil attributes # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpageattributes() end

---
---Insert string <resources> into the `/Resources` dictionary of the current page.
---
---@param resources string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setpageresources(resources) end

---
---Return string <resources> that was set by `pdf.setpageresources()`.
---
---@return string | nil resources # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpageresources() end

---
---Insert string <attributes> into the `/Pages` dictionary of the `/Catalog`.
---
---@param attributes string # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setpagesattributes(attributes) end

---
---Return string <attributes> that was set by `pdf.setpageattributes()`.
---
---@return string | nil attributes # String.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpagesattributes() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setxformattributes() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getxformattributes() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setxformresources() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getxformresources() end

---
---Set major version number of the PDF file format.
---
---Note: This function sets the version number of the file header. It does not set the `/Version` key of the `/Catalog` as recommended for PDF-1.4 and later.
---@param n integer # Major version number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setmajorversion(n) end

---
---Return major version number of the PDF file format.
---
---@see pdf.setmajorversion
---
---@return integer n # Major version number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getmajorversion() end

---
---Set minor version number of the PDF file format.
---
---Note: This function sets the version number of the file header. It does not set the `/Version` key of the `/Catalog` as recommended for PDF-1.4 and later.
---
---@param n integer # Minor version number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setminorversion(n) end

---
---Return minor version number of the PDF file format.
---
---@see pdf.setminorversion
---
---@return integer n # Minor version number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getminorversion() end

---
---Return the `/CreationDate` string of the `/Info` dictionary.
---
---@return string
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getcreationdate() end

---
---Set error level for inserting *PDF* files.
---
---A warning/error is issued if the inserted *PDF* file has a newer version number than the main *PDF* file.
--- * `level <= 0`: Issue a warning.
--- * `level > 0`: Issue an error.
---@param level integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setinclusionerrorlevel(level) end

---
---Return value set by `pdf.setinclusionerrorlevel()`.
---
---@return integer level # Error level.
---
---@see pdf.setinclusionerrorlevel
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getinclusionerrorlevel() end

---
---Set <ignore> status for inserting images.
--- * `ignore ~= 0`: Issue a warning if image file type is unknown.
--- * `ignore == 0`: Issue an error if image file type is unknown.
---LuaTeX can handle these file types: pdf, png, jpg, jbig2
---@param ignore integer # Ignore image.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setignoreunknownimages(ignore) end

---
---Return <ignore> status.
---
---@return integer ignore # Ignor image.
---
---@see pdf.setignoreunknownimages
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getignoreunknownimages() end

---
---Set bit field suppressing certain informational keys in the *PDF* file.
---
---@param flags integer # Bit field.
--- --------------------------------------------------------------
--- Bit  Meaning
--- ---  ---------------------------------------------------------
---   1  `/PTEX.FullBanner` in `/Info` dictionary of the trailer.
---   2  `/PTEX.FileName` in `/XObject` dictionary of an image. (1)
---   4  `/PTEX.PageNumber` in `/XObject` dictionary of an image.
---   8  `/PTEX.InfoDict` in `/XObject` dictionary of an image.
---  16  `/Creator` in `/Info` dictionary of the trailer.
---  32  `/CreationDate` in `/Info` dictionary of the trailer.
---  64  `/ModDate` in `/Info` dictionary of the trailer.
--- 128  `/Producer` in `/Info` dictionary of the trailer.
--- 256  `/Trapped` in `/Info` dictionary of the trailer.
--- 512  `/ID` of the trailer.
--- --------------------------------------------------------------
--- (1) Seems to work only if '\pdfvariable imageaddfilename = 1'
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setsuppressoptionalinfo(flags) end

---
---Return bit field set by `pdf.setsuppressoptionalinfo()`.
---
---@return integer flags # Bit field.
---
---@see pdf.setsuppressoptionalinfo
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getsuppressoptionalinfo() end

---
---Set `/ID` of the trailer.
---
---@param id string # Trailer ID.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.settrailerid(id) end

---
---Return `/ID` of the trailer.
---
---@return string id # Trailer ID.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.gettrailerid() end

---
---Add or remove `/CIDSet` entry in `/FontDescriptor`.
--- * `n ~= 0`: Remove `/CIDSet` entry.
--- * `n == 0`: Add `/CIDSet` entry.
---
---@param n integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setomitcidset(n) end

---
---Return <flag> set by `pdf.setomitcidset()`.
---
---@return integer flag
---
---@see pdf.setomitcidset
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getomitcidset() end

---
---Add or remove `/CharSet` entry in `/FontDescriptor`.
--- * `n ~= 0`: Remove `/CharSet` entry.
--- * `n == 0`: Add `/CharSet` entry.
---
---@param n integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setomitcharset(n) end

---
---Return value set by `pdf.setomitcharset()`.
---
---@return integer n
---
---@see pdf.setomitcharset
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getomitcharset() end

---
---Set compression level of streams.
---
---@param level integer # Minimum: 0, Maximum: 9
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setcompresslevel(level) end

---
---Return compression level of streams.
---
---@return integer level # Compression level.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getcompresslevel() end

---
---Set compression level of objects.
---
---@param level integer # Minimum: 0, Maximum: 9
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setobjcompresslevel(level) end

---
---Return compression level of objects.
---
---@return integer level # Compression level.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getobjcompresslevel() end

---
---Switch for recompressing streams of `/XObject`s.
---
---@param switch integer # 0: don't recompress, 1: do recompress.
---FIXME: pdf.setrecompress() not working. Bug?
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setrecompress(switch) end

---
---Return value set by `pdf.setrecompress()`.
---
---@return integer switch # 0: don't recompress, 1: do recompress.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getrecompress() end

---
---Add or remove `/ToUnicode` entry in a font dictionary.
---
---@param n integer
--- * `n ~= 0`: Add `/ToUnicode` entry.
--- * `n == 0`: Remove `/ToUnicode` entry.
--- Note: Use `\pdfextension glyphtounicode` to add a CMap mapping from character codes to Unicode values.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setgentounicode(n) end

---
---Return value set by `pdf.setgentounicode()`.
---
---@return integer n
---@see pdf.setgentounicode
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getgentounicode() end

---
---Set number of decimal digits used for writing numbers (floats) in the *PDF* file.
---
---@param ndigits integer # Number of decimal digits.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setdecimaldigits(ndigits) end

---
---Return value set by `pdf.setdecimaldigits()`.
---
---@return integer ndigits # Number of digits.
---
---@see pdf.setdecimaldigits
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getdecimaldigits() end

---
---Set resolution of PK fonts.
---@param resolution integer
---@param fixed_dpi integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setpkresolution(resolution, fixed_dpi) end

---
---Return resolution of PK fonts.
---
---@return integer resolution
---@return integer fixed_dpi
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpkresolution() end

---
---Return object number of latest created objects.
---
---@return integer objnum # Number of latest created object.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getlastobj() end

---
---Return object number of latest created `/Annot` object (subtype `/Link`) that was created by `/pdfextension startlink`.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getlastlink() end

---
---Return object number of latest created `/Annot` object that was created by `pdf.reserveobj('annot')`.
---
---@return integer objnum # Number of latest created object.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getlastannot() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getretval() end

---
---Return the object number of the latest created pdf object.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getmaxobjnum() end

---
---Return a string describing the object type.
---
---@param objnum integer # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getobjtype(objnum) end

---
---Return the number of the font resource name.
---The `/Font` entry of a `/Resource` dictionary maps resource names to font dictionaries.
---LuaTeX uses resource names like `/F36` or `/F52`, where the number corresponds to
---the font ID.
---
---@param id integer # Font ID.
---
---@return integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getfontname(id) end

---
---Return the object number of the `/Font` dictionary.
---
---@param id integer # Font ID.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getfontobjnum(id) end

---
---Return the font size in scaled points.
---
---@param id integer # Font ID.
---
---@return integer # Font size.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getfontsize(id) end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getxformname() end

---
---Set horizontal and vertical offset from the top left corner of the page.
---
---@param h integer # Horizontal offset in scaled points.
---@param v integer # Vertical offset in scaled points.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setorigin(h, v) end

---
---Return values set by `pdf.setorigin()`.
---
---@return integer h # Horizontal offset in scaled points.
---@return integer v # Vertical offset in scaled points.
---
---@see pdf.setorigin
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getorigin() end

---
---Set default resolution of a bitmap image.
---
---@param dpi integer # Resolution.
--- LuaTeX determines the size of an image as follows:
--- 1. It uses <width> and <height> parameter of `\useimageresource`.
--- 2. If (1) is missing, it uses the resolution given in the metadata of the image.
--- 3. If (2) is missing, it uses the resolution given by this function.
--- 4. If (3) is missing, it uses a resolution of 72 dpi.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setimageresolution(dpi) end

---
---Return value set by `pdf.setimageresolution()`.
---
---@return integer dpi # Resolution.
---
---@see pdf.setimageresolution
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getimageresolution() end

---
---Set margin size of hyperlinks.
---
---@param margin integer # Margin in scaled points.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setlinkmargin(margin) end

---
---Return value set by `pdf.setlinkmargin()`.
---
---@return integer margin # Margin in scaled points.
---@see pdf.setlinkmargin
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getlinkmargin() end

---
---Set margin size of destination.
---
---@param margin integer # Margin in scaled points.
---FIXME pdf.setdestmargin() is not working. Bug?
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setdestmargin(margin) end

---
---Return value set by `pdf.setdestmargin()`.
---
---@return integer margin # Margin in scaled points.
---@see pdf.setdestmargin
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getdestmargin() end

---
---Set size of margin for threads.
---
---@param margin integer # Margin in scaled points.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setthreadmargin(margin) end

---
---Return value set by `pdf.setthreadmargin()`.
---
---@return integer margin # Margin in scaled points.
---
---@see pdf.setthreadmargin
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getthreadmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setxformmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getxformmargin() end

---
---Return coordinates of the current position. The origin of the coordinate system is at the lower left corner of the page.
---
---@return integer h # Horizontal position in scaled points.
---@return integer v # Vertical position in scaled points.
---
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpos() end

---
---Return horizontal coordinate of the current position. The origin of the coordinate system is at the lower left corner of the page.
---
---@return integer h # Horizontal position in scaled points.
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.gethpos() end

---
---Return vertical coordinate of the current position. The origin of the coordinate system is at the lower left corner of the page.
---
---@return integer v # Vertical position in scaled points.
---
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getvpos() end

---
---Returns `true` is a CTM is currently used.
---
---@return boolean
---
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.hasmatrix() end

---
---Return the CTM (current transformation matrix) at the current position.
--- ┌         ┐
--- │ a  b  0 │
--- │ c  d  0 │
--- │ e  f  1 │
--- └         ┘
---@return integer a
---@return integer b
---@return integer c
---@return integer d
---@return integer e
---@return integer f
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getmatrix() end

---
---Write a string into the contents stream of the current page. If LuaTeX is currently inside a text block (**BT**...**ET**), close the text block first.
---
---@param str string # String.
---
---Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.print(str) end

---
---Write a string into the contents stream of the current page.
---
---@param type string # Type.
---@param str string # String.
---Parameter <type> determines how the string is written:
--- * `text`: String <str> is written inside a text block (**BT**...**ET**).
--- * `page`: String <str> is written outside a text block (**BT**...**ET**).
--- * `origin`: Like `page` but the CTM is inserted just before the string <str>.
--- * `direct`: String <str> is written directly, independ of whether this is inside or outside a text block.
--- * `raw`: Like `direct`.
----Note: This function is mainly used inside `\latelua` calls.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.print(type, str) end

---
---Create an object and write it immediately to the pdf file.
---
---The created object looks like this:
--->  <objnum> 0 obj
--->    <str>
--->  endobj
---@param objnum? integer # Object number (optional argument).
---@param str string # Contents of the object.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.immediateobj(str) end

---
---Create an object and write it immediately to the pdf file.
---The created object looks like this:
--->  <objnum> 0 obj
--->    <contents of file <filename>>
--->  endobj
---@param objnum? integer # Object number (optional argument).
---@param file string # Literal string `"file"`.
---@param filename string # File name.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.immediateobj(objnum, file, filename) end

---
---Create an object and write it immediately to the pdf file.
---
---The created object looks like this:
--->   <objnum> 0 obj
--->   <<
--->   <streamdict>
--->   /Length 123 >>
--->   stream
--->   <streamcontents>
--->   endstream
--->   endobj
---@param objnum? integer # Object number (optional argument).
---@param stream string # Literal string `"stream"`.
---@param streamcontents string # Contents of the stream.
---@param streamdict string # Stream dictionary.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.immediateobj(stream, streamcontents, streamdict) end

---
---Create an object and write it immediately to the pdf file.
---
---The created object looks like this:
--->   <objnum> 0 obj
--->   <<
--->   <contents of `file` <filename>>
--->   /Length 123 >>
--->   stream
--->   <streamcontents>
--->   endstream
--->   endobj
---@param objnum? integer # Object number (optional argument).
---@param streamfile string # Literal string `"streamfile"`.
---@param filename string # File name.
---@param streamdict string # Stream dictionary.
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.immediateobj(streamfile, filename, streamdict) end

---
---Create an object.
---
---This object is written to the pdf file only if it is referenced later by `pdf.refobj()`
---The created object looks like this:
--->  <objnum> 0 obj
--->    <str>
--->  endobj
---@param objnum? integer # Object number (optional argument).
---@param str string # Contents of the object.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.obj(str) end

---
---Create an object.
---
---This object is written to the pdf file only if it is referenced later by `pdf.refobj()`
---The created object looks like this:
--->  <objnum> 0 obj
--->    <contents of file <filename>>
--->  endobj
---
---@param objnum? integer # Object number (optional argument).
---@param file string # Literal string `"file"`.
---@param filename string # File name.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.obj(objnum, file, filename) end

---
---Create an object.
---
---This object is written to the pdf file only if it is referenced later by `pdf.refobj()`
---The created object looks like this:
--->   <objnum> 0 obj
--->   <<
--->   <streamdict>
--->   /Length 123 >>
--->   stream
--->   <streamcontents>
--->   endstream
--->   endobj
---@param objnum? integer # Object number (optional argument).
---@param stream string # Literal string `"stream"`.
---@param streamcontents string # Contents of the stream.
---@param streamdict string # Stream dictionary.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.obj(stream, streamcontents, streamdict) end

---
---Create an object.
---
---This object is written to the pdf file only if it is referenced later by `pdf.refobj()`
---The created object looks like this:
--->   <objnum> 0 obj
--->   <<
--->   <contents of `file` <filename>>
--->   /Length 123 >>
--->   stream
--->   <streamcontents>
--->   endstream
--->   endobj
---@param objnum? integer # Object number (optional argument).
---@param streamfile string # Literal string `"streamfile"`.
---@param filename string # File name.
---@param streamdict string # Stream dictionary.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.obj(streamfile, filename, streamdict) end

---
---Create an object.
---
---@param keyvals table # Object specification.
---> keyvals = {
--->    type           = <string>, -- `'stream'` (stream object), `'raw'` (non-stream object)
--->    immediate      = <boolean>,
--->    objnum         = <number>, -- object number
--->    attr           = <string>, -- stream dictionary
--->    compresslevel  = <number>,
--->    objcompression = <boolean>,
--->    file           = <string>, -- contents of object/stream
--->    string         = <string>, -- contents of object/stream
--->    nolength       = <boolean>, -- omit `/Length` entry of stream dictionary
---> }
--- Keys `string` and `file` are mutual exclusive.
--- Key `nolength` omits `/Length` entry of the stream dictionary only if a `/Length` entry is given in the `attr` key.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.obj(keyvals) end

---
---Write referenced object to pdf file.
---
---@param objnum integer # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.refobj(objnum) end

---
---Create an empty object.
---
---Use `pdf.obj()` or `pdf.immediateobj()` to define this object.
---
---@return integer objnum # Object number.
---
---@see pdf.obj
---@see pdf.immediateobj
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.reserveobj() end

---
---Create a annotation object.
---
---Annotation object are not written to file directly but must be registered with `pdf.registerannot()`.
---
---@param annot string # Literal string `'annot'`.
---
---@return integer objnum # Object number.
---@see pdf.registerannot
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.reserveobj(annot) end

---
---Return object number of page <pagenum>.
---
---This can be a forwar reference, i.e. page <pagenum> doesn't have to be created yet.
---
---@param pagenum integer # Page number.
---
---@return integer objnum # Object number.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getpageref(pagenum) end

---
---Add an `/Annot` object to the `/Annots` dictionary.
---
---@param objnum integer # Object number of `/Annot` object.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.registerannot(objnum) end

---
---Allocate a new color stack and returns it's id. The arguments
---are the same as for the similar backend extension primitive.
---
---```
---pdf.newcolorstack("0 g","page",true) --
---```
---
---* Corresponding C source code: [lpdflib.c#L1166-L1199](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1166-L1199)
---
---@param s string
---@param literal_mode 'page'|'direct'|'origin'|'text'|'raw'
---@param page_start boolean
---
---@return integer color_stack_id
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.newcolorstack(s, literal_mode, page_start) end

---
---Force some additional code into the font resource.
---
---It can for
---instance be used to add a custom `ToUnicode` vector to a bitmap file.
---
---* Corresponding C source code: [lpdflib.c#L1202-L1216](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1202-L1216)
---@param font_id integer
---@param pdf_code integer
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setfontattributes(font_id, pdf_code) end

---
---@deprecated
---@see pdf.getfontname
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.fontname() end

---
---@deprecated
---@see pdf.getpdffontsize
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.fontsize() end

---
---Return how many objects were created so far.
---
---@return integer n # Number of objects.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.maxobjnum() end

---
---Return number of object that are written or not yet written to file.
---
---* Corresponding C source code: [lpdflib.c#L1270-L1285](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1270-L1285)
---
---@return integer written_obj # Object written to file.
---@return integer not_written_obj # Object not yet written to file.
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.getnofobjects() end

---
---* Corresponding C source code: [lpdflib.c#L1218-L1235](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1218-L1235)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.includechar() end

---
---* Corresponding C source code: [lpdflib.c#L1237-L1242](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1237-L1242)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.includefont() end

---
---* Corresponding C source code: [lpdflib.c#L1244-L1268](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1244-L1268)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.includeimage() end

---
---@deprecated
---@see pdf.getobjtype
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.objtype() end

---
---@deprecated
---@see pdf.getpageref
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.pageref() end

---
---* Corresponding C source code: [lpdflib.c#L871-L879](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L871-L879)
---
---@param force boolean
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.setforcefile(force) end

---
---* Corresponding C source code: [lpdflib.c#L1294-L1298](https://github.com/TeX-Live/luatex/blob/f52b099f3e01d53dc03b315e1909245c3d5418d3/source/texk/web2c/luatexdir/lua/lpdflib.c#L1294-L1298)
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.settypeonewidemode() end

---
---@deprecated
---@see pdf.getxformname
---
---😱 [Types](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/blob/main/library/luatex/pdf.lua) incomplete or incorrect? 🙏 [Please contribute!](https://github.com/Josef-Friedrich/LuaTeX_Lua-API/pulls)
function pdf.xformname() end
