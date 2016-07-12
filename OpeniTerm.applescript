on run argv
	
	tell application "iTerm"
		activate
		
		if 0 < (count of windows) then
			set myTerminal to (current window)
		else
			set myTerminal to (make new window)
		end if
		
		set sessionName to "zsh"
		if 1 < (count of items of argv) then
			set sessionName to item 2 of argv
		end if
		
		set targetPath to "~/"
		if 0 < (count of items of argv) then
			set targetPath to item 1 of argv
		end if
		
		tell myTerminal
			create tab with profile "zsh"
			tell (current session)
				write text "cd " & targetPath
			end tell
		end tell
		
	end tell
	
end run

