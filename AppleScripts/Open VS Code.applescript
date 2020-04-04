(*
 Open in VS Code
 * from https://github.com/hamxiaoz/open-folder-with-vs-code
 * removed `activate` so existing window will not focus if VS Code is already open
 * updated func name to `code`
*)

-- files/folders are selected and icon is pressed
on run
	tell application "Finder"
		if selection is {} then
			set finderSelection to folder of the front window as string
		else
			set finderSelection to selection as alias list
		end if
	end tell
	
	code(finderSelection)
end run

-- selection drag-and-dropped onto script icon
on open (theList)
	code(theList)
end open

-- open VSCode in current finder directory when icon is pressed without selection
on code(listOfAliases)
	tell application "Visual Studio Code"
		-- activate
		open listOfAliases
	end tell
end code