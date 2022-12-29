# VSCode

## Settings Files

- [settings.json](./settings.json)
- [keybindings.json](./keybindings.json)

## Font

[Victor Mono](https://rubjo.github.io/victor-mono/) </br>
~~[Fira Code](https://github.com/tonsky/FiraCode)~~

## Extensions

### GENERAL

Essential
- [asvetliakov.vscode-neovim](https://github.com/vscode-neovim/vscode-neovim)
- [eamodio.gitlens](https://github.com/gitkraken/vscode-gitlens)
- [esbenp.prettier-vscode](https://github.com/prettier/prettier-vscode)
- [dbaeumer.vscode-eslint](https://github.com/Microsoft/vscode-eslint)
- [tabnine.tabnine-vscode](https://github.com/codota/tabnine-vscode)
- [gerane.Theme-Humane](https://github.com/gerane/VSCodeThemes) (light theme)
- [gsdras.night-owl](https://github.com/sdras/night-owl-vscode-theme) (dark theme)
- [albert.TabOut](https://github.com/albertromkes/tabout)
- [suchitadoshi1987.file-hopper](https://github.com/suchitadoshi1987/related-files-hopper)
- [oderwat.indent-rainbow](https://github.com/oderwat/vscode-indent-rainbow)
- [hoovercj.vscode-settings-cycler](https://github.com/hoovercj/vscode-api-playground)
- [github.vscode-pull-request-github](https://github.com/Microsoft/vscode-pull-request-github)
- [sleistner.vscode-fileutils](https://github.com/sleistner/vscode-fileutils)

### Honerable Mention
- johnpapa.vscode-peacock
- formulahendry.code-runner
- humao.rest-client
- aaron-bond.better-comments
- msjsdiag.debugger-for-chrome
- github.remotehub
- deerawan.vscode-dash

### LANGUAGE/FRAMEWORK SPECIFIC
- lifeart.vscode-ember-unstable
- lifeart.vscode-glimmer-syntax
- lifeart.vscode-ember-unstable
- bradlc.vscode-tailwindcss
- mfeckies.handlebars-formatter
- rebornix.ruby
- wingrunr21.vscode-ruby

## Bindings

| ACTION | NATIVE | CUSTOM |
| ------ | ------ | ------ |
| **MOVEMENT AND SELECTION** <!---->
| select line | cmd [+shift] + arrows
| select around line | | cmd + '
| delete a line | | cmd + shift + '
| select around word (then next duplicate selection) | cmd + d
| select all instances of word| cmd + shift + l
| select bigWord | alt [+shift] + arrows
| select smallword | crtl + alt [+shift] + arrows
| shrink/expand selection (smallWord, bigWord, block/enclosure) | | shift + alt + up/down arrow
| expand and find | cmd + e
| go to line | ctrl + g + line#
| add line after | cmd + enter
| add line before | cmd + shift + enter
| outdent/indent line | cmd + ]/[
| duplicate up/down | | shift + ctrl + up/down arrow
| **VIEW - EDITOR** <!---->
| move editor to next group | | cmd + ;
| move editor to previous group | | cmd + shift + ;
| split editor right | | cmd + opt + shift + ;
| focus next editor | | cmd + k
| focus prev editor | | cmd + j
| focus next group | | cmd + l
| focus prev group | | cmd + h
| close all editors | | cmd + y
| close other editors | | shift + cmd + y
| close editors to the right | | shift + opt + cmd + y
| open sidebar | ctrl + b
| open git panel | | ctrl + cmd + g
| **VIEW - INTEGRATED TERMINAL** <!---->
| toggle integrated terminal | | cmd + i
| return to editor | cmd + numbers |
| split pane | | cmd + ;
| focus next pane | | cmd + k
| focus previous pane | | cmd + j
| clear | | cmd + shift + i
| resize pane | ctrl + cmd + arrow
| **VIEW - BREADCRUMBS** <!---->
| navigation forward | | l
| navigation backward | | h
| **VIEW - SEARCH** <!---->
| open in editor | alt + enter
| **VIEW - CODE NAVIGATOR** <!---->
| open and stick file | alt + enter
| open and stick file without closing code navigator | right arrow
| **FILES** <!----> 
| new folder | | opt + cmd + n
| **VS CODE** <!---->
| sidebar | cmd + b |
| go to shortcuts editor | | ctrl + cmd + k
| change themes | | ctrl + cmd + t
| focus and select breadcrumbs | | cmd + shift + .
| alternate relative/absolute line numbers (extension: Settings Cycler) | | ctrl + cmd + l
| open last editor/navigate editor picker | | alt + tab
| reopen closed editor | cmd + shift + t
| stick previewed tab | | cmd + shift + k 
| preview .md file | ctrl + cmd + v
| Quickfix shortcuts (/all previously cmd + .) | | cmd + m
| breadcrumbs.focus | | [unassigned]
| workbench.actions.openSettings | | [unassigned]
| **GIT** <!---->
| open branch > file > line on GitHub (extension: GitLens) | | opt + cmd + g
| open working file from diff | | opt + cmd + o
| **HTML & CSS** <!---->
| emmet | [emmet.io](https://emmet.io/)

## Todo
- search.action.openNewEditor

## Settings Locations

| file                                 | location                                 |
| ------------------------------------ | ---------------------------------------- |
| settings.json | ~/Library/Application Support/Code/User/ |
| keybindings.json | ~/Library/Application Support/Code/User/ |
| `code --list-extensions` | -
