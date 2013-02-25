//
//  main.m
//  LChanger
//
//  Created by Paul Van Tuyl on 2/25/13.
//  Copyright __MyCompanyName__ 2013. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <AppleScriptObjC/AppleScriptObjC.h>

int main(int argc, char *argv[])
{
	[[NSBundle mainBundle] loadAppleScriptObjectiveCScripts];

	return NSApplicationMain(argc, (const char **) argv);
}
