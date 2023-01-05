// https://github.com/Ketho/vscode-wow-api/blob/master/src/extension.ts

import * as path from 'path'
import * as vscode from 'vscode'

export function activate (context) {
  console.log('loaded ketho.wow-api', context.extension.id)

  setExternalLibrary('API', true)
  updateConfigs()

  vscode.workspace.onDidChangeConfiguration(event => {
    if (event.affectsConfiguration('wowAPI.emmyLua.loadFrameXML')) {
      const loadFrameXML = vscode.workspace
        .getConfiguration('wowAPI')
        .get('emmyLua.loadFrameXML')
      setExternalLibrary('Optional', loadFrameXML ? true : false)
    } else if (event.affectsConfiguration('wowAPI.locale')) {
      const wowapi = vscode.workspace.getConfiguration('wowAPI')
      globalstrings.data = require('./data/globalstring/' +
        wowapi.get('locale')).data
    }
  })
}

export function deactivate () {
  console.log('deactivated ketho.wow-api')
  setExternalLibrary('API', false)
  setExternalLibrary('Optional', false)
}

export function setExternalLibrary (folder, enable) {
  console.log('setExternalLibrary', folder, enable)
  const extensionId = 'ketho.wow-api'
  const extensionPath =
    vscode.extensions.getExtension(extensionId)?.extensionPath
  // Use path.join to ensure the proper path seperators (\ for windows, / for anything else) are used.
  const folderPath = path.join(extensionPath, 'EmmyLua', folder)
  const config = vscode.workspace.getConfiguration('Lua')
  const library = config.get('workspace.library')
  if (library && extensionPath) {
    // remove any older versions of our path e.g. "publisher.name-0.0.1"
    for (let i = library.length - 1; i >= 0; i--) {
      const el = library[i]
      const isSelfExtension = el.indexOf(extensionId) > -1
      const isCurrentVersion = el.indexOf(extensionPath) > -1
      if (isSelfExtension && !isCurrentVersion) {
        library.splice(i, 1)
      }
    }
    const index = library.indexOf(folderPath)
    if (enable) {
      if (index == -1) {
        library.push(folderPath)
      }
    } else {
      if (index > -1) {
        library.splice(index, 1)
      }
    }
    config.update('workspace.library', library, true)
  }
}

function updateConfigs () {
  const sumneko = vscode.workspace.getConfiguration('Lua')
  // sumneko.update("completion.displayContext", 0, true) // hides the emmylua source from the hover tooltip

  const wowapi = vscode.workspace.getConfiguration('wowAPI')
  globalstrings.data = require('./data/globalstring/' +
    wowapi.get('locale')).data
}
