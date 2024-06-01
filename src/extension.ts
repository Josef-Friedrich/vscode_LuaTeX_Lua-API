import * as vscode from 'vscode'
import path from 'path'

const folders = [
  'lualatex',
  'lualibs',
  'luametatex',
  'luaotfload',
  'luatex'
] as const

type Folder = typeof folders[number]

const extensionId = 'JosefFriedrich.luatex'

/**
 * @param folder - A folder inside the library sub folder
 *
 * @returns An absolute path
 */
function getLibraryPath (folder?: Folder): string {
  const extensionPath =
    vscode.extensions.getExtension(extensionId)?.extensionPath
  if (extensionPath == null) {
    throw new Error('JosefFriedrich.luatex not installed')
  }
  if (folder == null) {
    return path.join(extensionPath, 'library')
  }
  return path.join(extensionPath, 'library', folder)
}

/**
 * Set the value `Lua.workspace.library` in the workspace folder configuration.
 *
 * @param libraries - An array of libraries
 */
function setConfig (libraries: string[]): void {
  vscode.workspace
    .getConfiguration('Lua')
    .update(
      'workspace.library',
      libraries,
      false
    )
}

function addLibrary (folder: Folder): void {
  const config = vscode.workspace.getConfiguration('Lua')
  const libraryPath = getLibraryPath(folder)
  const library = config.get('workspace.library') as string[]
  if (library.indexOf(libraryPath) === -1) {
    library.push(libraryPath)
  }
  setConfig(library)
}

function removeLibrary (folder: Folder): void {
  const config = vscode.workspace.getConfiguration('Lua')
  const libraryPath = getLibraryPath(folder)
  const library = config.get('workspace.library') as string[]
  const index = library.indexOf(libraryPath)
  if (index > -1) {
    library.splice(index, 1)
  }
  setConfig(library)
}

/**
 * Set the config `lua.workspace.library` according to the settings in `luatex.library`.
 */
function update (): void {
  let libraries = vscode.workspace
    .getConfiguration()
    .get<string[]>('Lua.workspace.library')

  if (libraries == null) {
    libraries = []
  }

  const basePath = getLibraryPath()

  const newLibs = new Set<string>()

  for (const library of libraries) {
    if (!library.includes(basePath)) {
      newLibs.add(library)
    }
  }

  const luatexLibFolders = vscode.workspace
    .getConfiguration('luatex')
    .get<string[]>('library')

  if (luatexLibFolders != null) {
    if (luatexLibFolders?.includes('all')) {
      newLibs.add(getLibraryPath())
    } else {
      for (const folder of luatexLibFolders) {
        const f = folder as any
        if (folders.includes(f)) {
          newLibs.add(getLibraryPath(f))
        }
      }
    }
  }

  setConfig(Array.from(newLibs.values()))
}

export function activate (context: vscode.ExtensionContext): void {
  context.subscriptions.push(
    // luatex
    vscode.commands.registerCommand('luatex.addLuatexLib', () => {
      addLibrary('luatex')
    }),
    vscode.commands.registerCommand('luatex.removeLuatexLib', () => {
      removeLibrary('luatex')
    }),

    // luametatex
    vscode.commands.registerCommand('luatex.addLuametatexLib', () => {
      addLibrary('luametatex')
    }),
    vscode.commands.registerCommand('luatex.removeLuametatexLib', () => {
      removeLibrary('luametatex')
    }),

    // lualatex
    vscode.commands.registerCommand('luatex.addLualatexLib', () => {
      addLibrary('lualatex')
    }),
    vscode.commands.registerCommand('luatex.removeLualatexLib', () => {
      removeLibrary('lualatex')
    }),

    // lualibs
    vscode.commands.registerCommand('luatex.addLualibsLib', () => {
      addLibrary('lualibs')
    }),
    vscode.commands.registerCommand('luatex.removeLualibsLib', () => {
      removeLibrary('lualibs')
    }),

    // luaotfload
    vscode.commands.registerCommand('luatex.addLuaotfloadLib', () => {
      addLibrary('luaotfload')
    }),
    vscode.commands.registerCommand('luatex.removeLuaotfloadLib', () => {
      removeLibrary('luaotfload')
    }),

    vscode.workspace.onDidChangeConfiguration(event => {
      if (event.affectsConfiguration('luatex.library')) {
        update()
      }
    }),
    vscode.window.onDidChangeActiveTextEditor(event => {
      if (event?.document.languageId === 'lua') {
        update()
      }
    })
  )
}

export function deactivate (): void {}
