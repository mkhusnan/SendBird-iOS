//
//  AppDelegate.m
//  JSQMessagesViewController_SendBird
//
//  Created by Jed Gyeong on 4/23/16.
//  Copyright © 2016 SENDBIRD. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
//    [SBDMain initWithApplicationId:@"A7A2672C-AD11-11E4-8DAA-0A18B21C2D82"];
//    [SBDMain initWithApplicationId:@"17692825-976F-46B9-A756-A8712E2EDB19"];
    [SBDMain initWithApplicationId:@"13116BBD-54E5-4E24-B3EA-59FC17FC871B"];
    
    [SBDMain setLogLevel:SBDLogLevelDebug];
    
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    if (audioSession != nil) {
        NSError *error = nil;
        [audioSession setCategory:AVAudioSessionCategoryPlayback error:&error];
        
        if (error != nil) {
            NSLog(@"Set Audio Session error: %@", error);
        }
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
