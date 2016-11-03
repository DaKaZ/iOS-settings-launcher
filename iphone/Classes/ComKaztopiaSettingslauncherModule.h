/**
 * settingslauncher
 *
 * Created by Your Name
 * Copyright (c) 2016 Your Company. All rights reserved.
 */

#import "TiModule.h"

@interface ComKaztopiaSettingslauncherModule : TiModule

/**
 * Launches a system-settings URL
 * @param args The url to launch
 * @since 1.0.1
 **/
- (void)launchSettingsWithPath:(id)args;

@end
