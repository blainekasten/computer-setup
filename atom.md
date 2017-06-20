# Setup Atom

### Packages

- nuclide
- nuclide-test-runner-jest
- platformio-ide-terminal
- prettier-atom
- react
- vim-mode-plus
- vim-mode-plus-ex-mode
- linter
- linter-eslint

### keymap

Modify the keymap to have these values in it:

```cson
'atom-text-editor.vim-mode-plus:not(.insert-mode)':
  'space': 'vim-mode-plus:search'
  ';': 'vim-mode-plus-ex-mode:open'

'atom-workspace':
  '\-n': 'tree-view:toggle'
```
