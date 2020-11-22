xmap gc  <Plug>VSCodeCommentary
nmap gc  <Plug>VSCodeCommentary
omap gc  <Plug>VSCodeCommentary
nmap gcc <Plug>VSCodeCommentaryLine

nmap ]e <Cmd>call VSCodeNotify('editor.action.marker.next')<CR>
nmap [e <Cmd>call VSCodeNotify('editor.action.marker.prev')<CR>

nmap <leader>iO <Cmd>call VSCodeNotify('editor.action.organizeImports')<CR>
nmap <leader>ir <Cmd>call VSCodeNotify('editor.action.rename')<CR>
nmap <leader>ih <Cmd>call VSCodeNotify('editor.action.triggerParameterHints')<CR>
nmap <leader>ip <Cmd>call VSCodeNotify('editor.action.formatDocument')<CR>
nmap <leader>iP <Cmd>call VSCodeNotify('editor.action.formatSelection')<CR>
nmap <leader>ic <Cmd>call VSCodeNotify('references-view.showCallHierarchy')<CR>

nmap <leader>fr <Cmd>call VSCodeNotify('workbench.action.quickOpenRecent')<CR>
nmap <leader>fs <Cmd>call VSCodeNotify('workbench.action.files.save')<CR>
nmap <leader>ff <Cmd>call VSCodeNotify('workbench.action.quickOpen')<CR>
nmap <leader>fF <Cmd>call VSCodeNotify('fzf-quick-open.runFzfFilePwd')<CR>

nmap <leader>sp <Cmd>call VSCodeNotify('filesExplorer.findInWorkspace')<CR>
nmap <leader>sf <Cmd>call VSCodeNotify('fzf-quick-open.runFzfSearch')<CR>
nmap <leader>sf <Cmd>call VSCodeNotify('fzf-quick-open.runFzfSearchPwd')<CR>

nmap <leader>ww <Cmd>call VSCodeNotify('workbench.action.quickOpenView')<CR>
nmap <leader>ws <Cmd>call VSCodeNotify('workbench.action.splitEditor')<CR>
nmap <leader>w- <Cmd>call VSCodeNotify('workbench.action.splitEditorOrthogonal')<CR>
nmap <leader>wH <Cmd>call VSCodeNotify('workbench.action.moveEditorToLeftGroup')<CR>
nmap <leader>wJ <Cmd>call VSCodeNotify('workbench.action.moveEditorToBelowGroup')<CR>
nmap <leader>wK <Cmd>call VSCodeNotify('workbench.action.moveEditorToAboveGroup')<CR>
nmap <leader>wL <Cmd>call VSCodeNotify('workbench.action.moveEditorToRightGroup')<CR>
nmap <leader>wp <Cmd>call VSCodeNotify('workbench.action.pinEditor')<CR>
nmap <leader>wP <Cmd>call VSCodeNotify('workbench.action.unpinEditor')<CR>
nmap <leader>wo <Cmd>call VSCodeNotify('workbench.action.moveEditorToNextGroup')<CR>
nmap <leader>wO <Cmd>echoerr 'Not supported yet'<CR> "Should be open the active editor in next group
nmap <leader>wd <Cmd>call VSCodeNotify('workbench.action.closeActiveEditor')<CR>
nmap <leader>wr <Cmd>call VSCodeNotify('workbench.action.openPreviousEditorFromHistory')<CR>
nmap <leader>wR <Cmd>call VSCodeNotify('workbench.action.reloadWindow')<CR>
nmap <leader>w= <Cmd>call VSCodeNotify('workbench.action.evenEditorWidths')<CR>

nmap gr <Cmd>call VSCodeNotify('editor.action.goToReferences')<CR>
nmap gR <Cmd>call VSCodeNotify('references-view.findReferences')<CR>