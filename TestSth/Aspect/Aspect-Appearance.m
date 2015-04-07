//
//  Aspect-Appearance.m
//  TestSth
//
//  Created by gypsii001 on 15/4/3.
//  Copyright (c) 2015年 gypsii001. All rights reserved.
//

#import "AppDelegate.h"
#import <XAspect/XAspect.h>
#import "ViewController.h"

// Define an aspect field for GoogleAnalytics
#define AtAspect Appearance

#define AtAspectOfClass AppDelegate
@classPatchField(AppDelegate)
AspectPatch(-, BOOL, application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions)
{
    // Optional: automatically send uncaught exceptions to Google Analytics.
//    [GAI sharedInstance].trackUncaughtExceptions = YES;
//    
//    // Optional: set Google Analytics dispatch interval to e.g. 20 seconds.
//    [GAI sharedInstance].dispatchInterval = 20;
//    
//    // Optional: set Logger to VERBOSE for debug information.
//    [[[GAI sharedInstance] logger] setLogLevel:kGAILogLevelVerbose];
//    
//    // Initialize tracker. Replace with your tracking ID.
//    [[GAI sharedInstance] trackerWithTrackingId:@"UA-XXXX-Y"];
    NSLog(@"init: ==> %@", [self init]);
    ViewController *adsf = [[ViewController alloc] init];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:adsf];
    [self.window addSubview:navi.view];
    return XAMessageForward(application:application didFinishLaunchingWithOptions:launchOptions);
}
@end
#undef AtAspectOfClass
#undef AtAspec
