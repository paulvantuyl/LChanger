--
--  LChangerAppDelegate.applescript
--  LChanger
--
--  Created by Paul Van Tuyl on 2/25/13.
--  Copyright 2013 __MyCompanyName__. All rights reserved.
--

script LChangerAppDelegate
	property parent : class "NSObject"
	
	on applicationWillFinishLaunching_(aNotification)
		-- Insert code here to initialize your application before any files are opened 
	end applicationWillFinishLaunching_
	
	on applicationShouldTerminate_(sender)
		-- Insert code here to do any housekeeping before your application quits 
		return current application's NSTerminateNow
	end applicationShouldTerminate_
	
end script