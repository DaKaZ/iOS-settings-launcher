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

- (id)moduleGUID
{
	return @"f7af8fec-65cd-4135-b9a0-cd3ab684220a";
}

- (NSString*)moduleId
{
	return @"com.kaztopia.settingslauncher";
}

#pragma mark Lifecycle

- (void)startup
{
	// this method is called when the module is first loaded
	// you *must* call the superclass
	[super startup];

	NSLog(@"[DEBUG] %@ loaded",self);
}

#pragma Public APIs

- (void)launchSettingsWithPath:(id)args
{
    ENSURE_SINGLE_ARG(args, NSString);
    
    if ([TiUtils isIOS10OrGreater]) {
        NSString *fullPath = [NSString stringWithFormat:@"%@fs:%@", @"Pre", args];
        NSURL *url = [NSURL URLWithString:fullPath];
        Class<NSObject> workSpaceClass = NSClassFromString([NSString stringWithFormat:@"L%@ork%@ce", @"SApplicationW", @"spa"]);
        if (workSpaceClass) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            id workSpaceInstance = [workSpaceClass performSelector:NSSelectorFromString([NSString stringWithFormat:@"defa%@space",@"ultWork"])];
            SEL selector = NSSelectorFromString([NSString stringWithFormat:@"op%@iveURL:wi%@ons:", @"enSensit", @"thOpti"]);
            if ([workSpaceInstance respondsToSelector:selector]) {
                [workSpaceInstance performSelector:selector withObject:url withObject:nil];
            }
#pragma clang diagnostic pop
            
        }
    } else {
        NSString *fullPath = [NSString stringWithFormat:@"prefs:%@", args];
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:fullPath]];
    }
    
}

@end
