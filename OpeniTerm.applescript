on run argv
	
	tell application "iTerm"
		activate
		set countOfTerminals to count of terminals
		if 0 < countOfTerminals then
			set myTerminal to terminal 1
		else
			set myTerminal to (make new terminal)
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
			set mySession to (launch session "zsh")
			tell mySession
				write text "cd " & targetPath
			end tell
		end tell
		
	end tell
	
end run
