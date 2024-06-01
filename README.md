[![version](https://vsmarketplacebadges.dev/version-short/JosefFriedrich.luatex.svg)](https://marketplace.visualstudio.com/items?itemName=JosefFriedrich.luatex)

# Visual Studio Code `LuaTeX` Extension

Extension for the `LuaTeX` development.

This extension brings the [LuaTeX
API](https://github.com/Josef-Friedrich/LuaTeX_Lua-API) into Visual Studio Code.

This project is also an extension package for the most important extensions related to LuaTeX development:
[lua-language-server](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) and
[LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)

`.vscode/settings.json`

```json
{
  "luatex.library": ["all", "luatex", "luametatex", "lualatex", "lualibs", "luaotfload"]
}
```

## Other methods to use the [LuaTeX
API](https://github.com/Josef-Friedrich/LuaTeX_Lua-API):

### Lua Langauge Server Addon manager

In the meantime you can use the [Addon manager](https://luals.github.io/wiki/addons/#addon-manager) of the [Lua Language Server](https://github.com/LuaLS/lua-language-server). All LuaTeX related libraries are included:

![Addon-Manager](https://github.com/Josef-Friedrich/vscode_LuaTeX_Lua-API/assets/545838/8c02d85a-3e34-4d1e-8165-66ae65e02aa8)

### Git clone

Or you clone the libraries

```
git clone https://github.com/Josef-Friedrich/LuaTeX_Lua-API.git <repo>
```

`.vscode/settings.json`:

```json
{
"Lua.workspace.library": [
    "<repo>/library"
  ]
}
```

## Development

* https://code.visualstudio.com/api/get-started/your-first-extension
* https://code.visualstudio.com/api

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
