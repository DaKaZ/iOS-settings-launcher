/**
 * settingslauncher
 *
 * Created by Your Name
 * Copyright (c) 2016 Your Company. All rights reserved.
 */

#import "ComKaztopiaSettingslauncherModule.h"
#import "TiBase.h"
#import "TiHost.h"
#import "TiUtils.h"

@implementation ComKaztopiaSettingslauncherModule

#pragma mark Internal

// this is generated for your module, please do not change it
-(id)moduleGUID
{
	return @"f7af8fec-65cd-4135-b9a0-cd3ab684220a";
}

// this is generated for your module, please do not change it
-(NSString*)moduleId
{
	return @"com.kaztopia.settingslauncher";
}

#pragma mark Lifecycle

-(void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[INFO] %@ loaded",self);
}

-(void)shutdown:(id)sender
{
	// this method is called when the module is being unloaded
	// typically this is during shutdown. make sure you don't do too
	// much processing here or the app will be quit forceably

	// you *must* call the superclass
	[super shutdown:sender];
}

#pragma mark Cleanup

-(void)dealloc
{
	// release any resources that have been retained by the module
	[super dealloc];
}

#pragma mark Internal Memory Management

-(void)didReceiveMemoryWarning:(NSNotification*)notification
{
	// optionally release any resources that can be dynamically
	// reloaded once memory is available - such as caches
	[super didReceiveMemoryWarning:notification];
}

#pragma mark Listener Notifications

-(void)_listenerAdded:(NSString *)type count:(int)count
{
	if (count == 1 && [type isEqualToString:@"my_event"])
	{
		// the first (of potentially many) listener is being added
		// for event named 'my_event'
	}
}

-(void)_listenerRemoved:(NSString *)type count:(int)count
{
	if (count == 0 && [type isEqualToString:@"my_event"])
	{
		// the last listener called for event named 'my_event' has
		// been removed, we can optionally clean up any resources
		// since no body is listening at this point for that event
	}
}

#pragma Public APIs

-(void)launchSettingsWithPath:(id)args
{
    ENSURE_SINGLE_ARG(args, NSString);
    if ([[[UIDevice currentDevice] systemVersion] intValue] >= 10) {
        NSString *fullPath = [NSString stringWithFormat:@"Prefs:%@", args];
        NSURL *url = [NSURL URLWithString:fullPath];
        Class<NSObject> workSpaceClass = NSClassFromString(@"LSApplicationWorkspace");
        if (workSpaceClass) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            id workSpaceInstance = [workSpaceClass performSelector:NSSelectorFromString(@"defaultWorkspace")];
            SEL selector = NSSelectorFromString(@"openSensitiveURL:withOptions:");
            if ([workSpaceInstance respondsToSelector:selector]) {
                [workSpaceInstance performSelector:selector withObject:url withObject:nil];
            }
#pragma clang diagnostic pop
            
        }
    }
    else {
        NSString *fullPath = [NSString stringWithFormat:@"prefs:%@", args];
        NSURL *url = [NSURL URLWithString:fullPath];
        [[UIApplication sharedApplication] openURL:url];
    }
    
}

@end
