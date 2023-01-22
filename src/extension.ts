import * as vscode from 'vscode'
import path from 'path'

const folders = ['lualatex', 'lualibs', 'luaotfload', 'luatex'] as const

type Folder = typeof folders[number]

const extensionId = 'JosefFriedrich.luatex'

/**
 * @param folder - A folder inside the library sub folder
 *
 * @returns An absolute path
 */
function getLibraryPath (folder: Folder): string {
  const extensionPath =
    vscode.extensions.getExtension(extensionId)?.extensionPath
  if (extensionPath == null) {
    throw new Error('JosefFriedrich.luatex not installed')
  }
  return path.join(extensionPath, 'library', folder)
}

/**
 * Set the value `Lua.workspace.library` in the workspace folder configuration.
 *
 * @param libraries - An array of libraries
 */
function setConfig (libraries: string[]) {
  vscode.workspace
    .getConfiguration()
    .update(
      'Lua.workspace.library',
      libraries,
      vscode.ConfigurationTarget.WorkspaceFolder
    )
}

function addLibrary (folder: Folder) {
  const config = vscode.workspace.getConfiguration('Lua')
  const libraryPath = getLibraryPath(folder)
  const library = config.get('workspace.library') as string[]
  if (library.indexOf(libraryPath) === -1) {
    library.push(libraryPath)
  }
  setConfig(library)
}

function removeLibrary (folder: Folder) {
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
 * Set the config lua.workspace.library according to the settings in luatex.library.
 */
function update () {
  let libraries = vscode.workspace
    .getConfiguration('Lua')
    .get<string[]>('workspace.library')

  if (libraries == null) {
    libraries = []
  }

  const newLibraries: string[] = []
  for (const library of libraries) {
    if (!libraries.includes(extensionId)) {
      newLibraries.push(library)
    }
  }

  const luatexLibFolders = vscode.workspace
    .getConfiguration('luatex')
    .get<string[]>('library')

  if (luatexLibFolders != null) {
    for (const folder of luatexLibFolders) {
      const f = folder as any
      if (typeof folder === 'string' && folders.includes(f)) {
        newLibraries.push(getLibraryPath(f))
      }
    }
  }

  setConfig(newLibraries)
}

export function activate (context: vscode.ExtensionContext) {
  context.subscriptions.push(
    vscode.commands.registerCommand('luatex.addLuatexLib', () => {
      addLibrary('luatex')
    }),
    vscode.commands.registerCommand('luatex.removeLuatexLib', () => {
      removeLibrary('luatex')
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

export function deactivate () {}
