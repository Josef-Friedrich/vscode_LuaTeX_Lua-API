import * as vscode from 'vscode'
import path from 'path'

type Folder = 'lualatex' | 'lualibs' | 'luaotfload' | 'luatex'

function getLibraryPath (folder: Folder): string {
  const extensionId = 'JosefFriedrich.luatex'
  const extensionPath =
    vscode.extensions.getExtension(extensionId)?.extensionPath
  if (extensionPath == null) {
    throw new Error('JosefFriedrich.luatex not installed')
  }
  return path.join(extensionPath, 'library', folder)
}

function updateLibraryConfig (libraries: string[]) {
  const config = vscode.workspace.getConfiguration('Lua')
  config.update(
    'workspace.library',
    libraries,
    vscode.ConfigurationTarget.Workspace
  )
}

function addLibrary (folder: Folder) {
  const config = vscode.workspace.getConfiguration('Lua')
  const libraryPath = getLibraryPath(folder)
  const library = config.get('workspace.library') as string[]
  if (library.indexOf(libraryPath) === -1) {
    console.log('Add library: ' + libraryPath)
    library.push(libraryPath)
  }
  updateLibraryConfig(library)
}

function removeLibrary (folder: Folder) {
  const config = vscode.workspace.getConfiguration('Lua')
  const libraryPath = getLibraryPath(folder)
  const library = config.get('workspace.library') as string[]
  const index = library.indexOf(libraryPath)
  if (index > -1) {
    console.log('Remove library: ' + libraryPath)
    library.splice(index, 1)
  }
  updateLibraryConfig(library)
}

export function activate (context: vscode.ExtensionContext) {
  context.subscriptions.push(
    vscode.commands.registerCommand('luatex.addLuatexLib', () => {
      addLibrary('luatex')
    })
  )

  context.subscriptions.push(
    vscode.commands.registerCommand('luatex.removeLuatexLib', () => {
      removeLibrary('luatex')
    })
  )
}

export function deactivate () {}
