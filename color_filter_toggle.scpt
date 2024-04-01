tell application "System Settings"
	activate
		tell application "System Events"
				tell its application process "System Settings"
		-- click on Accessibility item in the view section of the top menu bar that is present at all times when not in fullscreen mode
						set ready to false
						repeat while not ready
							try
								click the menu item "Accessibility" of the menu "View" of menu bar 1
								set ready to true
							end try
						end repeat
		-- click on on the Display button option in the Accessibility page that we just navigated to
						set ready to false
						repeat while not ready
							try	
								click button 3 of group 1 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Accessibility" 
								set ready to true
							end try
						end repeat
		-- click the toggle of the color filter option to either turn it on or off
						set ready to false
						repeat while not ready
							try	
								click checkbox 1 of group 5 of scroll area 1 of group 1 of group 2 of splitter group 1 of group 1 of window "Display" 
								set ready to true
							end try
						end repeat
				end tell
		end tell
	quit
end tell
