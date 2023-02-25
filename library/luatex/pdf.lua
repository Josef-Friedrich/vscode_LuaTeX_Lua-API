---@meta

---
---This library contains variables and functions that are related to the *PDF*
---backend.
---
pdf = {}

---
---This function can be used to replace the primitive `\pdfmapfile` inherited from *pdfTeX*. It expects a string as only
---parameter and has no return value. The first character in a map file can be
---`-`, `+` or `=` which means as much as remove, add or replace
---this line. It is not a state setter but acts immediately.
---
---@param map_file string
function pdf.mapfile(map_file) end

---
---This function can be used to replace primitive `\pdfmapline` inherited from *pdfTeX*. It expects a string as only
---parameter and has no return value. The first character in a map line can be
---`-`, `+` or `=` which means as much as remove, add or replace
---this line. It is not a state setter but acts immediately.
---
---@param map_line string
function pdf.mapline(map_line) end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@param catalog string
function pdf.setcatalog(catalog) end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@return string
function pdf.getcatalog() end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@param info string
function pdf.setinfo(info) end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@return string
function pdf.getinfo() end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@param names string
---
---@return string
function pdf.setnames(names) end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@return string
function pdf.getnames() end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@param trailer string
---
---@return string
function pdf.settrailer(trailer) end

---
---This function complements to the corresponding *PDF* token list backend that deals with metadata. The data type of the metadata is a string and is written to the *PDF*
---file directly after the token registers are set at the *TeX* end.
---
---@return string
function pdf.gettrailer() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.setpageattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.getpageattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.setpageresources() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.getpageresources() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.setpagesattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with page resources. The variables have no interaction with the corresponding *PDF*
---backend token register. They are written to the *PDF* file directly after the
---token registers set at the *TeX* end are written.
function pdf.getpagesattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with reuseable boxes and images. The variables have no interaction with the
---corresponding *PDF* backend token register. They are written to the *PDF*
---file directly after the token registers set at the *TeX* end are written.
function pdf.setxformattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with reuseable boxes and images. The variables have no interaction with the
---corresponding *PDF* backend token register. They are written to the *PDF*
---file directly after the token registers set at the *TeX* end are written.
function pdf.getxformattributes() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with reuseable boxes and images. The variables have no interaction with the
---corresponding *PDF* backend token register. They are written to the *PDF*
---file directly after the token registers set at the *TeX* end are written.
function pdf.setxformresources() end

---
---This function complements the corresponding *PDF* backend token lists dealing
---with reuseable boxes and images. The variables have no interaction with the
---corresponding *PDF* backend token register. They are written to the *PDF*
---file directly after the token registers set at the *TeX* end are written.
function pdf.getxformresources() end

---
---You can set both the major and minor version of the output. The major version is
---normally 1 but when set to 2 some data will not be written to the file in order
---to comply with the standard. What minor version you set depends on what *PDF*
---features you use. This is out of control of *LuaTeX*.
---
---One can set the major version number to 2 but we cannot guarantee that the engine
---adapts itself correctly, because there is no public and free specification that
---we know of. Also, user constructed annotations are not checked and just passed
---to the file. On the other hand, the *PDF* that the engine generated is rather
---simple and not that version depending.
function pdf.setmajorversion() end

---
---You can set both the major and minor version of the output. The major version is
---normally 1 but when set to 2 some data will not be written to the file in order
---to comply with the standard. What minor version you set depends on what *PDF*
---features you use. This is out of control of *LuaTeX*.
---
---One can set the major version number to 2 but we cannot guarantee that the engine
---adapts itself correctly, because there is no public and free specification that
---we know of. Also, user constructed annotations are not checked and just passed
---to the file. On the other hand, the *PDF* that the engine generated is rather
---simple and not that version depending.
function pdf.getmajorversion() end

---
---You can set both the major and minor version of the output. The major version is
---normally 1 but when set to 2 some data will not be written to the file in order
---to comply with the standard. What minor version you set depends on what *PDF*
---features you use. This is out of control of *LuaTeX*.
---
---One can set the major version number to 2 but we cannot guarantee that the engine
---adapts itself correctly, because there is no public and free specification that
---we know of. Also, user constructed annotations are not checked and just passed
---to the file. On the other hand, the *PDF* that the engine generated is rather
---simple and not that version depending.
function pdf.setminorversion() end

---
---You can set both the major and minor version of the output. The major version is
---normally 1 but when set to 2 some data will not be written to the file in order
---to comply with the standard. What minor version you set depends on what *PDF*
---features you use. This is out of control of *LuaTeX*.
---
---One can set the major version number to 2 but we cannot guarantee that the engine
---adapts itself correctly, because there is no public and free specification that
---we know of. Also, user constructed annotations are not checked and just passed
---to the file. On the other hand, the *PDF* that the engine generated is rather
---simple and not that version depending.
function pdf.getminorversion() end

---
---This function returns a string with the date in the format that ends up in the
---*PDF* file.
---
---@return string
function pdf.getcreationdate() end

---
---These functions controls how errors in included image are treated. It is modeled
---after the *PDFTeX* equivalent.
---
---This controls the behavior of `pdfTEX` when a pdf file is included which has a newer
---pdf version than the one specified by `\pdfmajorversion` and `\pdfminorversion`. If
---`\pdfinclusionerrorlevel` is set to `0` (the default), pdfTEX gives only a warning; if `1`, pdfTEX
---raises an error; if negative, no diagnostic at all is given.
---It was originally a shortened synonym of `\pdfoptionpdfinclusionerrorlevel`, which is
---now obsolete. The primitive was introduced in `pdfTEX` 1.30.0.
---
---__Reference:__
---
---* [pdftex manual page 35](http://mirrors.ctan.org/systems/doc/pdftex/manual/pdftex-a.pdf)
---
---@param level integer
function pdf.setinclusionerrorlevel(level) end

---
---These functions controls how errors in included image are treated. It is modeled
---after the *PDFTeX* equivalent.
---
---This controls the behavior of `pdfTEX` when a pdf file is included which has a newer
---pdf version than the one specified by `\pdfmajorversion` and `\pdfminorversion`. If
---`\pdfinclusionerrorlevel` is set to `0` (the default), pdfTEX gives only a warning; if `1`, pdfTEX
---raises an error; if negative, no diagnostic at all is given.
---It was originally a shortened synonym of `\pdfoptionpdfinclusionerrorlevel`, which is
---now obsolete. The primitive was introduced in `pdfTEX` 1.30.0.
---
---__Reference:__
---
---* [pdftex manual page 35](http://mirrors.ctan.org/systems/doc/pdftex/manual/pdftex-a.pdf)
---
---@return integer
function pdf.getinclusionerrorlevel() end

---
---These functions controls how errors in included image are treated. It is modeled
---after the *PDFTeX* equivalent.
---
---@param level integer
function pdf.setignoreunknownimages(level) end

---
---These functions controls how errors in included image are treated. It is modeled
---after the *PDFTeX* equivalent.
---
---@return integer
function pdf.getignoreunknownimages() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setsuppressoptionalinfo() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getsuppressoptionalinfo() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.settrailerid() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.gettrailerid() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setomitcidset() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getomitcidset() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setcompresslevel() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getcompresslevel() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setobjcompresslevel() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getobjcompresslevel() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setrecompress() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getrecompress() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setgentounicode() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getgentounicode() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setdecimaldigits() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getdecimaldigits() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setpkresolution() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getpkresolution() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getlastobj() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getlastlink() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getlastannot() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getretval() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getmaxobjnum() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getobjtype() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getfontname() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getfontobjnum() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getfontsize() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getxformname() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.fontobjnum() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setorigin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getorigin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setimageresolution() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getimageresolution() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setlinkmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getlinkmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setdestmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getdestmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setthreadmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getthreadmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setxformmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getxformmargin() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getpos() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.gethpos() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getvpos() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.hasmatrix() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getmatrix() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.print() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.immediateobj() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.obj() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.refobj() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.reserveobj() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getpageref() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.registerannot() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.newcolorstack() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setfontattributes() end

---
------------------------------------------------------------------------
---Undocumented functions listed in alphabetical order
---
---Document them by sliding them up and place them in the order of the
---official documentation
------------------------------------------------------------------------

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.fontname() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.fontsize() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getnofobjects() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.getomitcharset() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.includechar() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.includefont() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.includeimage() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.maxobjnum() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.objtype() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.pageref() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setforcefile() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.setomitcharset() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.settypeonewidemode() end

---
---Warning! Undocumented code!<p>
---TODO: Please contribute
---https://github.com/Josef-Friedrich/LuaTeX_Lua-API#how-to-contribute
function pdf.xformname() end
