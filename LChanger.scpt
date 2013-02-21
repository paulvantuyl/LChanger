-- Written by paulvantuyl (http://paulvantuyl.com) on 02-21-2013

-- Changes a selected Directory, and recursively changes all items in that Directory to a new Label Color
-- Save as an application in your Applications Directory
-- Then stick this bad boy in the Finder Toolbar. Select the Directory you want to recursively change, and run LChanger.

global new_colors, new_color

on run
    
	try
		activate
		-- Select the new Label Color
		set new_colors to (choose from list {"None", "Orange", "Red", "Yellow", "Blue", "Purple", "Green", "Gray"} with title "Select Label Color" with prompt "Select a Label Color" OK button name "Change Label Colors" cancel button name "Cancel" default items {"None"})
		-- Set the selected new Label Color to be an integer
		if (new_colors is false) then
			tell me to quit
		else if (new_colors is not false) then
			set new_color to item 1 of new_colors
		end if
		if new_color is "None" then
			set new_color to 0
		else if new_color is "Orange" then
			set new_color to 1
		else if new_color is "Red" then
			set new_color to 2
		else if new_color is "Yellow" then
			set new_color to 3
		else if new_color is "Blue" then
			set new_color to 4
		else if new_color is "Purple" then
			set new_color to 5
		else if new_color is "Green" then
			set new_color to 6
		else if new_color is "Gray" then
			set new_color to 7
		end if
	on error -128
		tell me to quit
	end try
	
	try
		activate
		-- Change the Label Color
		tell application "Finder"
			set label index of (selection as alias) to new_color
			set label index of every item of entire contents of (selection as alias) to new_color
		end tell
	on error error_message number error_number
		display alert ("Error on changing the Label color.") message error_message & (" Error number ") & error_number & "."
	end try
	
end run
