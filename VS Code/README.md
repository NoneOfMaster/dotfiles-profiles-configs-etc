# VSCode

## Settings

| file                                 | location                                 |
| ------------------------------------ | ---------------------------------------- |
| `settings.json` & `keybindings.json` | ~/Library/Application Support/Code/User/ |

## Extensions Highlights

`code --list-extensions`

- aaron-bond.better-comments
- albert.TabOut
- dbaeumer.vscode-eslint
- eamodio.gitlens
- esbenp.prettier-vscode
- formulahendry.code-runner
- gerane.Theme-Humane
- humao.rest-client
- johnpapa.vscode-peacock
- lifeart.vscode-ember-unstable
- msjsdiag.debugger-for-chrome
- vscodevim.vim

## Bindings Highlights

| ACTION | NATIVE | CUSTOM | VIM | MISC |
| ------ | ------ | ------ | ------ | ------ |
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
| **VIEW (EDITOR)** <!---->
| move editor to next group | | cmd + ;
| move editor to previous group | | cmd + shift + ;
| focus next editor | | cmd + k
| focus prev editor | | cmd + j
| focus next group | | cmd + l
| focus prev group | | cmd + h
| close all windows | | cmd + y
| **VIEW (INTEGRATED TERMINAL)** <!---->
| toggle integrated terminal | | cmd + i
| return to editor | cmd + numbers |
| split pane | | cmd + ;
| close pane | | | | ctrl + d
| focus next pane | | cmd + k
| focus previous pane | | cmd + j
| clear | | cmd + shift + i
| resize pane | ctrl + cmd + arrows
| **FILES** <!----> 
| new folder | | alt/opt + cmd + n
| **VS CODE** <!---->
| go to shortcuts editor | | ctrl + cmd + k
| sidebar | cmd + b |
| open in editor (search) | alt + enter
| open last editor/navigate editor picker | | alt + tab
| reopen closed editor | cmd + shift + t
| stick previewed tab | | cmd + shift + k 
| open file from code navigator without closing code navigator | right arrow
| open and stick file from code navigator (editor picker) | alt + enter
| preview .md file | ctrl + cmd + v
| Quickfix shortcuts (/all previously cmd + .) | | cmd + m
| breadcrumbs.focus | | [unassigned]
| workbench.actions.openSettings | | [unassigned]
| **HTML & CSS** <!---->
| emmet | [emmet.io](https://emmet.io/)

## Todo
- search.action.openNewEditor