[![version](https://vsmarketplacebadges.dev/version-short/JosefFriedrich.luatex.svg)](https://marketplace.visualstudio.com/items?itemName=JosefFriedrich.luatex)

# Visual Studio Code `LuaTeX` Extension

Extension for the `LuaTeX` development.

This extension brings the [LuaTeX
API](https://github.com/Josef-Friedrich/LuaTeX_Lua-API) into your
vscode.

This project is also an extension package for the most important extensions related to LuaTeX development:
[lua-language-server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) and
[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

`.vscode/settings.json`

```json
{
  "luatex.library": ["all", "luatex", "lualatex", "lualibs", "luaotfload"]
}
```
Open the Command Palette (`Ctrl + Shift + P`) and search for `luatex`

## Development

### Debug

```
make install
make watch
F5
```

### Publish

```
make package
make publish
```
