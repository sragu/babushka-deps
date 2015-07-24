tell application "System Preferences"
    reveal anchor "keyboardTab" of pane "com.apple.preference.keyboard"
end tell

tell application "System Events" to tell process "System Preferences"
	tell tab group 1 of window 1
    	tell checkbox 1 to if value is 0 then click
	end tell
end tell

quit application "System Preferences"